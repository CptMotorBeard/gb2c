#include "display.h"
#include "opcodes.h"
#include "hardware.h"
#include "gpu.h"
#include "interrupts.h"
#include <stdio.h>

//GPU modes
//Send head to first row (204 cycles)
#define HBLANK 0
//Send head to first column (4560 cycles)
#define VBLANK 1
//This time is used to fetch data from the Object Attribute Memory
//(80 cycles)
#define OAMLOAD 2
//Takes loaded line and draws it on screen (172 cycles)
#define LCD 3

int mode = 0;

//drawing a frame takes 456 cycles (steps) need to keep track
int gpu_clock = 0;

BYTE scrollX = 0;
BYTE scrollY = 0;

GLfloat currLine[160*3];

float colorPalette[4][3] = {
    {1.0f,1.0f,1.0f},
    {0.66f,0.66f,0.66f},
    {0.33f,0.33f,0.33f},
    {0.0f,0.0f,0.0f}
};

//NOTE: 1 Frame takes 70224 cycles
//Tile map is simply 32*32 bytes refering to a certain tile in the tileset (results to a 256*256 display)
//VRAM MAP
//-------------------------------
//9C00-9FFF Tile Map #1
//-------------------------------
//9800-9BFF Tile Map #0
//-------------------------------
//9000-97FF Tile Set #1 (tiles 0-127)
//-------------------------------
//8800-8FFF Tile set #1 (tiles 128-255)
//          Tile set #0 (tiles (-1)-(-128)
//-------------------------------
//8000-87FF Tile Set #0 (0-127)
//-------------------------------
//LCDC keeps track of the Display operation, tile maps, tile sets, and sprite/tile size
BYTE LCDC;
struct spriteOAM{
    BYTE yCoord;
    BYTE xCoord;
    BYTE tileNumber;
    BYTE options;
};

//Need to store the current line
int cur_line = 0;

void gpuStep(int c){
	
	gpu_clock += c;
	
    switch(mode){
		
		case OAMLOAD:
			if(gpu_clock >= 80){
				mode = LCD;
				processLine();
				gpu_clock = 0;
			}
			break;
			
		case LCD:
			if(gpu_clock >= 172){
				mode = HBLANK;                
				gpu_clock = 0;
				if (readMemory(0xFF40) & 128) {
					updateLine();
				}
			}
			break;
		
        case HBLANK:
            if(gpu_clock >= 204){            			
                cleanLine();
				gpu_clock = 0;
				cpu[0xFF44]++;
				if (readMemory(0xFF44) == 143) {
					// VBLANK
					if (interrupt.enable && INTERRUPTS_VBLANK) {interrupt.flags |= INTERRUPTS_VBLANK;}
					mode=VBLANK;
				} else {mode = OAMLOAD;}
                
            }            
            break;
			
        case VBLANK:
            if(gpu_clock >= 456){
				gpu_clock = 0;
				cpu[0xFF44]++;
				
				if (readMemory(0xFF44) > 153) {
					// Restart
					writeMemory(0xFF44, 0);
					mode = OAMLOAD;
				}
            }        
            break;					
    }
}
/*Access memory, go pixel by pixel to produce the correct line
  sprite collision priority: smaller x coor > table order
  sprite cap per line -> 10
  sprites with x = 0, 168 or y=0, 160 are hidden
  as a result processing left to right is the correct order*/
void processLine(){
    //LCD Control byte which includes window and sprite enables as well as the pointers
    LCDC = readMemory(0xFF40);
    scrollX = readMemory(0xFF43);
    scrollY = readMemory(0xFF42);
	int line = readMemory(0xFF44);
    //apply the background layer to curLine-----------------------------------
    WORD bgTileMapAddress = 0x9800 + (((LCDC >> 3) & 1)*0x400);
    //(line/8)*32 adjusts for the y and scrollX/8 adjusts for X
    bgTileMapAddress += ((scrollY + line)/8) * 32;

    int written = 0;
    char spriteY = 8 + (LCDC & 4)*8;
    char curX = 7 - (scrollX % 8);
    char curY = ((scrollY + line) % 8) ;
	
	//check if background is enabled and line is not done
    while((LCDC & 1) & (written < 160)){
        //get tile from tileset
        BYTE tileAddr = readMemory(bgTileMapAddress);

        //2 bytes is 1 row for a tile
        WORD tile;		
		if ((LCDC >> 4) & 0x1) {
			tile = (readMemory(0x8000 + (tileAddr * 0x10) + (curY * 2)) << 8) + readMemory(0x8000 + (tileAddr * 0x10) + (curY * 2) + 1);			
		} else {
			tile = (readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10) + (curY * 2)) << 8) + readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10) + (curY * 2) + 1);
		}
        //write all the pixels for this line from that tile
        //NOTE: I propably printed all of these backwards;
		
        while(curX > -1){
            int pixel = (tile >> (curX) & 1)*2 + (((tile >> (8 + curX))  & 1));
            BYTE palette = (readMemory(0xFF47) >> (pixel)*2) & 3;
            currLine[written*3] = colorPalette[palette][0];
            currLine[written*3 + 1] =colorPalette[palette][1];
            currLine[written*3 + 2] =colorPalette[palette][2];
            written++;
            curX--;
        }
		
		curX = 7;
        bgTileMapAddress++;
    }
	
	/*
    //apply the window layer to curline---------------------------------------
    written = 0;
    WORD wndTileMapAddress = 0x9800 + ((LCDC >> 6) & 1)*0X0400;
    while((LCDC & 16) & (written < 160)){
        //get tile from tileset
        char tileAddr = readMemory(wndTileMapAddress) ;
        //2 bytes is 1 row for a tile
        short tile = readMemory((tileAddr + curY*2));
        //write all the pixels for this line from that tile
        //NOTE: I propably printed all of these backwards;
        while(curX > 0){
            int pixel = (((tile >> curX)  & 1) + 8)*2 + (tile >> (curX) & 1);
            currLine[written*3] = colorPalette[pixel][0];
            currLine[written*3 + 1] = colorPalette[pixel][1];
            currLine[written*3 + 2] = colorPalette[pixel][2];
            written++;
            curX--;
        }
        curX = 7;
    }
    */
    //apply the sprite layer to curLine---------------------------------------
    if(LCDC & 2){
        int i;
        struct spriteOAM currentSprite ;
        for(i = 0; i< 40; i++){
            currentSprite.yCoord = readMemory(0xFE00 + i*4);
            currentSprite.xCoord = readMemory(0xFE01 + i*4);
            currentSprite.tileNumber = readMemory(0xFE02 + i*4);
            currentSprite.options = readMemory(0xFE03 + i*4);
            //check if line intersects the sprite
            if((currentSprite.yCoord - 8 > line )& (currentSprite.yCoord - 8 - spriteY <= line)){
                //draw it on the line
                WORD tileAddr = 0x8000 + ((0x10)*currentSprite.tileNumber);
                WORD tile;
                BYTE spriteX = currentSprite.xCoord - 8;
                BYTE spriteY = currentSprite.yCoord - 16;
                int priority = (currentSprite.options >> 7) & 1;
                //check for y flip
                if((currentSprite.options >> 6) & 1){                    
					tile = (readMemory(tileAddr + (7 - (line % 8))) << 8) + readMemory(tileAddr + (7 - (line % 8))+ 1) ;
                }else{
                    tile = (readMemory(tileAddr + (line % 8)*2) <<8) +  readMemory(tileAddr + (line % 8)*2+1);
                }
                //check for x flip
                if(currentSprite.options >> 5 & 1){
                    int j;
                    for(j = 0;j < 8;j++){
                        if(priority == 0){
                            int pixel = (((tile >> (8 + j))  & 1)) + (tile >> j & 1)*2;
                            int objP = (currentSprite.options >> 4) & 1;
                            BYTE palette = (readMemory(0xFF48 + objP) >> (pixel*2)) & 3;
                            if((spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + j)*3] = colorPalette[palette][0];
                                currLine[(spriteX + j)*3 + 1] = colorPalette[palette][1];
                                currLine[(spriteX + j)*3 + 2] = colorPalette[palette][2];
                            }
                        }
                        else{
                        	int pixel = (((tile >> (8 + j))  & 1)) + (tile >> j & 1)*2;
                        	int objP = (currentSprite.options >> 4) & 1;
                        	BYTE palette = (readMemory(0xFF48 + objP) >> (pixel*2)) & 3;
                            if((currLine[(spriteX + j)*3] == 0) & (spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + j)*3] = colorPalette[palette][0];
                                currLine[(spriteX + j)*3 + 1] = colorPalette[palette][1];
                                currLine[(spriteX + j)*3 + 2] = colorPalette[palette][2];
                            }
                        }
                    }
                }else{
                    int j;
					
                    for(j = 7;j > -1;j--){
                        if(priority == 0){
                        	int pixel = (((tile >> (8 + j))  & 1)) + (tile >> j & 1)*2;
                        	int objP = (currentSprite.options >> 4) & 1;
                        	BYTE palette = (readMemory(0xFF48 + objP) >> (pixel*2)) & 3;
                            if((spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + 7 -j)*3] = colorPalette[palette][0];
                                currLine[(spriteX + 7 -j)*3 + 1] = colorPalette[palette][1];
                                currLine[(spriteX + 7 -j)*3 + 2] = colorPalette[palette][2];
                            }
                        }
                        else{
                        	int pixel = (((tile >> (8 + j))  & 1)) + (tile >> j & 1)*2;
                        	int objP = (currentSprite.options >> 4) & 1;
                        	BYTE palette = (readMemory(0xFF48 + objP) >> (pixel*2)) & 3;
                            if((currLine[(spriteX + 7 -j)*3] == 1.0f) & (spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + 7 -j)*3] = colorPalette[palette][0];
                                currLine[(spriteX + 7 -j)*3 + 1] = colorPalette[palette][1];
                                currLine[(spriteX + 7 -j)*3 + 2] = colorPalette[palette][2];
                            }
                        }
                    }
                }
            }
        }
    }

}
void cleanLine(){
     int i;
     for(i = 0; i <160; i++){
        currLine[i*3] = 1.0f;
        currLine[i*3 + 1] = 1.0f;
        currLine[i*3 + 2] = 1.0f;
     }
}
void updateLine(){
	scanLine(currLine, 143 - readMemory(0xFF44));
}

//recalculate all of the background map and outputs a .bmp file
void backgroundBitmap(char foldername[]){
	int data[256*256*3];
    scrollX = readMemory(0xFF43);
    scrollY = readMemory(0xFF42);
    LCDC = readMemory(0xFF40);
    WORD bgTileMapAddress = 0x9800 + (((LCDC >> 3) & 1)*0x400);
    BYTE tileAddr;
    WORD tile;

    int i;
    int j;
    int k;
    int l;
    int pixel;
    int offset;
    //apply the background map to the data array
    for(i = 0; i < 32; i++){
    	for(j = 0; j < 32; j++){

    		tileAddr = readMemory(bgTileMapAddress);
    		//get this tile
    		if ((LCDC >> 4) & 0x1) {
    			tile = (readMemory(0x8000 + (tileAddr * 0x10)) << 8) + readMemory(0x8000 + (tileAddr * 0x10) + 1);
    		} else {
    			tile = (readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10)) << 8) + readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10) + 1);
    		}
    		//apply the tile to data row by row
    		for(k = 0; k < 8; k++){
    			for(l=0;l < 8;l++){
					pixel = (tile >> (l) & 1)*2 + (((tile >> (8 + l))  & 1));
					offset = ((255-(k+i*8))*256 + j*8 + (7-l))*3;
					data[offset] = (int)(colorPalette[pixel][0]*255);
					data[offset + 1] = (int)(colorPalette[pixel][1]*255);
					data[offset + 2] = (int)(colorPalette[pixel][2]*255);
    			}
    			if ((LCDC >> 4) & 0x1) {
    				tile = (readMemory(0x8000 + (tileAddr * 0x10) + (k * 2)) << 8) + readMemory(0x8000 + (tileAddr * 0x10) + (k * 2) + 1);
    			} else {
    				tile = (readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10) + (k* 2)) << 8) + readMemory(0x9000 + (((SIGNED_BYTE)tileAddr) * 0x10) + (k * 2) + 1);
    			}

    		}
    		bgTileMapAddress++;
    	}
    }
    char filename[50];
    sprintf(filename, "%s/BG.bmp", foldername);
    makeBitmap(filename, 256,256,data);
}
//Read OAM and export all tiles
void fillOAMFolder(char foldername[]){
	int i;
	int data[8*8*3];
	WORD tile;
	struct spriteOAM currentSprite ;
	int k;
	int l;
	int offset;
	int pixel;
	for(i = 0; i< 40; i++){
		//find tile number
	    currentSprite.tileNumber = readMemory(0xFE02 + i*4);

	    //send tile data to data
		//get this tile
		//apply the tile to data row by row
		for(k = 0; k < 8; k++){
			for(l=0;l < 8; l++){
				tile = (readMemory(0x8000 + (currentSprite.tileNumber * 0x10)+ (k* 2)) << 8) + readMemory(0x8000 + (currentSprite.tileNumber * 0x10) + (k* 2)+ 1);
				pixel = (tile >> (l) & 1)*2 + (((tile >> (8 + l))  & 1));
				offset = (k*8 + l)*3;
				data[offset] = (int)(colorPalette[pixel][0]*255);
				data[offset + 1] = (int)(colorPalette[pixel][1]*255);
				data[offset + 2] = (int)(colorPalette[pixel][2]*255);
			}


		}
		char filename[50];
		sprintf(filename, "%s/sprite %d.bmp",foldername, i);
		makeBitmap(filename, 8,8,data);
	}
}
void fillTileSetFolder(char foldername[]){
	int data[8*8*3];
	WORD tileAddr;
	WORD tile;
	int k;
	int l;
	int offset;
	int pixel;
	for(tileAddr = 0x8000; tileAddr < 0x9000;tileAddr +=0x10){
		for(k = 0; k < 8; k++){
			for(l=0;l < 8; l++){
				tile = (readMemory(tileAddr + (k* 2)) << 8) + readMemory(tileAddr + (k* 2)+ 1);
				pixel = (tile >> (l) & 1)*2 + (((tile >> (8 + l))  & 1));
				offset = ((7-k)*8 + 7- l)*3;
				data[offset] = (int)(colorPalette[pixel][0]*255);
				data[offset + 1] = (int)(colorPalette[pixel][1]*255);
				data[offset + 2] = (int)(colorPalette[pixel][2]*255);
			}
		}
		char filename[50];
		sprintf(filename, "%s/tile %d.bmp",foldername, tileAddr);
		makeBitmap(filename, 8,8,data);
	}
}
