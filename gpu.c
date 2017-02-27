#include "display.h"
#include "opcodes.h"
#include "hardware.h"
#include "gpu.h"
#include "interrupts.h"
#include <stdio.h>


//GPU has 4 possible modes
int mode = 0;

//Need to keep track of whick line to draw
int line = 0;

//drawing a frame takes 456 cycles (steps)

BYTE scrollX = 0;
BYTE scrollY = 0;

GLfloat currLine[160*3];

float colorPalette[4][3] = {
    {1.0f,1.0f,1.0f},
    {0.66f,0.66f,0.66f},
    {0.33f,0.33f,0.33f},
    {0.0f,0.0f,0.0f}
};
//GPU modes
//Send head to first row (204 cycles)
int HBLANK = 0;
//Send head to first column (4560 cycles)
int VBLANK = 1;
//This time is used to fetch data from the Object Attribute Memory
//(80 cycles)
int OAMLOAD = 2;
//Takes loaded line and draws it on screen (172 cycles)
int LCD = 3;

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
char LCDC;
struct spriteOAM{
    char yCoord;
    char xCoord;
    char tileNumber;
    char options;
};
//Need to store the current line
void gpuStep(){
    switch(mode){
        case 0:
            if(clock >= 204){
            	clock -= 204;
                line = (line + 1) % 144;
                cleanLine();
				if (line == 143) {
					if (interrupt.enable && INTERRUPTS_VBLANK) {interrupt.flags |= INTERRUPTS_VBLANK;}
					mode=VBLANK;
				} else {mode = OAMLOAD;}
                
            }            
            break;
        case 1:
            if(clock >= 456){
				mode = OAMLOAD;
                clock -= 456;
            }
            
            break;
        case 2:
            if(clock >= 80){
                mode = LCD;
                clock -= 80;
                processLine();
            }
            break;
        case 3:
            if(clock >= 172){
                updateLine();
                mode = HBLANK;                
                clock -= 172;
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
    LCDC = cpu[0xFF40];
    scrollX = cpu[0xFF43];
    scrollY = cpu[0xFF42];
    //apply the background layer to curLine-----------------------------------
    WORD bgTileMapAddress = 0x9800 + ((LCDC >> 3) & 1)*0X0400;
    //(line/8)*32 adjusts for the y and scrollX/8 adjusts for X
    bgTileMapAddress += (line+ scrollY)*4 + (scrollX/8);
    int written = 0;
    char spriteY = 8 + (LCDC & 4)*8;
    char curX = (scrollX % 8);
    char curY = ((scrollY + line) % 8) ;
    //check if background is enabled and line is not done
    while((LCDC & 1) & (written < 160)){
        //get tile from tileset
        char tileAddr = cpu[bgTileMapAddress] ;
        //2 bytes is 1 row for a tile
        short tile = cpu[(tileAddr + curY*2)];
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
    //apply the window layer to curline---------------------------------------
    written = 0;
    WORD wndTileMapAddress = 0x9800 + ((LCDC >> 6) & 1)*0X0400;
    while((LCDC & 16) & (written < 160)){
        //get tile from tileset
        char tileAddr = cpu[wndTileMapAddress] ;
        //2 bytes is 1 row for a tile
        short tile = cpu[(tileAddr + curY*2)];
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
    //apply the sprite layer to curLine---------------------------------------
    if(LCDC & 2){
        int i;
        struct spriteOAM currentSprite ;
        for(i =0; i< 40; i++){
            currentSprite.yCoord = cpu[0xFE00 + i*4];
            currentSprite.xCoord = cpu[0xFE01 + i*4];
            currentSprite.tileNumber = cpu[0xFE02 + i*4];
            currentSprite.options = cpu[0xFE03 + i*4];
            //printf("Sprint: %d X: %d Y: %d tileNumber: %d\n", i, currentSprite.yCoord, currentSprite.xCoord, currentSprite.tileNumber);
            //check if line intersects the sprite
            if((currentSprite.yCoord - 16 > line )& (currentSprite.yCoord - 16 - spriteY < line)){
                //draw it on the line
                char tileAddr = cpu[0x8000 + currentSprite.tileNumber];
                short tile;
                char spriteX = currentSprite.xCoord - 8;
                char spriteY = currentSprite.yCoord - 16;
                int priority = currentSprite.options >> 7 & 1;
                //check for y flip
                if(currentSprite.options >> 6 & 1){
                    tile = cpu[tileAddr + (7 - (line % 8))];
                }else{
                    tile = cpu[tileAddr + (line % 8)];
                }
                //check for x flip
                if(currentSprite.options >> 5 & 1){
                    int j;
                    for(j = 0;j < 8;j++){
                        if(priority == 0){
                            int pixel = (((((tile >> j)  & 1)+ 8)*2) + (tile >> j & 1));
                            if((spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + j)*3] = colorPalette[pixel][0];
                                currLine[(spriteX + j)*3 + 1] = colorPalette[pixel][1];
                                currLine[(spriteX + j)*3 + 2] = colorPalette[pixel][2];
                            }
                        }
                        else{
                            int pixel = (((tile >> j)  & 1) + 8)*2 + (tile >> j & 1);
                            if((currLine[(spriteX + j)*3] == 0) & (spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + j)*3] = colorPalette[pixel][0];
                                currLine[(spriteX + j)*3 + 1] = colorPalette[pixel][1];
                                currLine[(spriteX + j)*3 + 2] = colorPalette[pixel][2];
                            }
                        }
                    }
                }else{
                    int j;
                    for(j = 7;j > -1;j--){
                        if(priority == 0){
                            int pixel = ((((tile >> j)  & 1) + 8)*2) + (tile >> j & 1);
                            if((spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + 7 -j)*3] = colorPalette[pixel][0];
                                currLine[(spriteX + 7 -j)*3 + 1] = colorPalette[pixel][1];
                                currLine[(spriteX + 7 -j)*3 + 2] = colorPalette[pixel][2];
                            }
                        }
                        else{
                            int pixel = ((((tile >> j)  & 1)+ 8)*2) + (tile >> j & 1);
                            if((currLine[(spriteX + 7 -j)*3] == 0) & (spriteX >= 0) & (spriteX <= 160) & (spriteY > 0) & (spriteY < 144)){
                                currLine[(spriteX + 7 -j)*3] = colorPalette[pixel][0];
                                currLine[(spriteX + 7 -j)*3 + 1] = colorPalette[pixel][1];
                                currLine[(spriteX + 7 -j)*3 + 2] = colorPalette[pixel][2];
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
        currLine[i*3] = 0.0f;
        currLine[i*3 + 1] = 0.0f;
        currLine[i*3 + 2] = 0.0f;
     }
}
void updateLine(){
	scanLine(currLine, line);
}
