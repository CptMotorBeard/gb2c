#include <stdio.h>
#include <stdlib.h>
#include "hardware.h"
#include "gpu.h"
#include "cpu.h"
#include "interrupts.h"
#include "display.h"
#define LINE_BREAK 0x0355
//////// 0x0355 /////////

GLfloat vertices[2*160*144];
GLfloat colors[3*160*144];

void read (char* input) {
	FILE *rom = fopen(input, "rb");
	if ( rom == 0) {
			printf( "Could not open file\n" );
	} else {
		fread(cpu, 1, romSize, rom);
		fclose(rom);
	}
}
HDC hDC;
int WINAPI WinMain(HINSTANCE hInstance,
                   HINSTANCE hPrevInstance,
                   LPSTR lpCmdLine,
                   int nCmdShow)
{
	initialize();
	read(lpCmdLine);
	
    WNDCLASSEX wcex;
    HWND hwnd;

    HGLRC hRC;
    MSG msg;
    BOOL bQuit = FALSE;

    /* register window class */
    wcex.cbSize = sizeof(WNDCLASSEX);
    wcex.style = CS_OWNDC;
    wcex.lpfnWndProc = WindowProc;
    wcex.cbClsExtra = 0;
    wcex.cbWndExtra = 0;
    wcex.hInstance = hInstance;
    wcex.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wcex.hCursor = LoadCursor(NULL, IDC_ARROW);
    wcex.hbrBackground = (HBRUSH)GetStockObject(BLACK_BRUSH);
    wcex.lpszMenuName = NULL;
    wcex.lpszClassName = "GBCScreen";
    wcex.hIconSm = LoadIcon(NULL, IDI_APPLICATION);;


    if (!RegisterClassEx(&wcex))
        return 0;

    /* create main window */
    hwnd = CreateWindowEx(0,
                          "GBCScreen",
                          "Gameboy",
                          WS_OVERLAPPEDWINDOW,
                          CW_USEDEFAULT,
                          CW_USEDEFAULT,
                          160,
                          144,
                          NULL,
                          NULL,
                          hInstance,
                          NULL);

    ShowWindow(hwnd, nCmdShow);
    int x;
    for(x = 0; x<144; x++){
        int i;
        for(i= 0;i<160;i++){
            vertices[(x*160 + i)*2] = -1.0f + ((float)i/80.0f);
            vertices[(x*160 + i)*2 + 1] = (float)x/72.0f - 1.0f;
            colors[(x*160 + i)*3] = 1.0f;
            colors[(x*160 + i)*3 + 1] = 1.0f;
            colors[(x*160 + i)*3 + 2] = 1.0f;
        }

    }
    /* enable OpenGL for the window */
    EnableOpenGL(hwnd, &hDC, &hRC);
	
    int i = 0;
	
	while (!bQuit)
    {
		cpuStep();
		gpuStep();
		interruptStep();
		if (interrupt.timer == 0x01) {interrupt.timer = 0xFF; interrupt.master = 1;}	// EI after one more cycle
		else if (interrupt.timer == 0x00) {interrupt.timer = 0xFF; interrupt.master = 0;} // DI after one more cycle
		printRegisters();
		//BYTE old;
		//if (cpu[0xFFE1] != old) {bQuit=1;}
		//old = cpu[0xFFE1]
		//if (PC.pair == LINE_BREAK) {i++; if(i==1){bQuit=1;}}
		if (PC.pair == LINE_BREAK) {bQuit=1;}
		
		/*if (PC.pair == 0x2834) {			
			while (count <= 256) {
				i++;
				if (i >= 16) {
					count++;
					printf("%d\n",count);
					int x = 16;
					WORD im[16];
					while (x > 0) {					
						im[x-1] = cpu[0x8000 + (16*count) + x-1];
						x--;
					}
					BYTE y, z, index;
					for (z = 0; z < 15; z+=2){
						for (y = 0; y < 8; y++){
							index = 1 << (7 - y);
							int p = ((im[z] & index) ? 1 : 0) + ((im[z+1] & index) ? 2 : 0);
							if (p == 0) {p = ' ';} else if (p == 1) {p = 'o';} else {p = 'x';}
							printf("%c", p);
						}
						printf("\n");
					}
				}
			}
			bQuit = 1;
		}*/
		
        /* check for messages */
        if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            /* handle or dispatch messages */
            if (msg.message == WM_QUIT)
            {
                bQuit = TRUE;
            }
            else
            {
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }
        }
        else
        {            
			/* OpenGL animation code goes here */
			
        }
    }
	bQuit = 0;
	//printRegisters();
	/*while (i < 0x400) {		
		BYTE loc = cpu[0x9800 + i];
		printf("%02X\n", loc);
		
		WORD im[16];
		int x = 0;
		while (x < 16) {
			im[x] = cpu[0x8000 + (16*loc) + x];
			x++;
		}
		BYTE y, z, index;
		for (z = 0; z < 15; z+=2){
			for (y = 0; y < 8; y++){
				index = 1 << (7 - y);
				int p = ((im[z] & index) ? 1 : 0) + ((im[z+1] & index) ? 2 : 0);
				if (p == 0) {p = ' ';} else if (p == 1) {p = 'o';} else {p = 'x';}
				printf("%c", p);
			}
			printf("\n");
		}
		i++;
		//if (i % 32 == 0) {printf("\n");}
	}*/
	BYTE old = cpu[0xFFE1];
	while(!bQuit){
		getchar();
		//if (PC.pair == LINE_BREAK) {getchar();}
		
		//if (cpu[0xFFE1] != old) {getchar();}
		//old = cpu[0xFFE1];
		//if (cpu[0xFF40]&1 && cpu[0xFF40]>>8&1 && cpu[0xFF40]!=0x91){getchar();}
		cpuStep();
		gpuStep();
		interruptStep();
		if (interrupt.timer == 0x01) {interrupt.timer = 0xFF; interrupt.master = 1;}	// EI after one more cycle
		else if (interrupt.timer == 0x00) {interrupt.timer = 0xFF; interrupt.master = 0;} // DI after one more cycle		
		printRegisters();
		
		/* check for messages */
        if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            /* handle or dispatch messages */
            if (msg.message == WM_QUIT)
            {
                bQuit = TRUE;
            }
            else
            {
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }
        }
        else
        {            
			/* OpenGL animation code goes here */
			
        }
	}
	
	
	
    /* shutdown OpenGL */
    DisableOpenGL(hwnd, hDC, hRC);
    /* destroy the window explicitly */
    DestroyWindow(hwnd);

    return msg.wParam;
}

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (uMsg)
    {
        case WM_CLOSE:
            PostQuitMessage(0);
        break;

        case WM_DESTROY:
            return 0;

        case WM_KEYDOWN:
        {

            switch (wParam)
            {
                case VK_ESCAPE:
                    PostQuitMessage(0);
                case VK_DOWN:

                break;
            }
        }
        break;

        default:
            return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }

    return 0;
}

void EnableOpenGL(HWND hwnd, HDC* hDC, HGLRC* hRC)
{
    PIXELFORMATDESCRIPTOR pfd;

    int iFormat;

    /* get the device context (DC) */
    *hDC = GetDC(hwnd);

    /* set the pixel format for the DC */
    ZeroMemory(&pfd, sizeof(pfd));

    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW |
                  PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 24;
    pfd.cDepthBits = 16;
    pfd.iLayerType = PFD_MAIN_PLANE;

    iFormat = ChoosePixelFormat(*hDC, &pfd);

    SetPixelFormat(*hDC, iFormat, &pfd);

    /* create and enable the render context (RC) */
    *hRC = wglCreateContext(*hDC);

    wglMakeCurrent(*hDC, *hRC);
}

void DisableOpenGL (HWND hwnd, HDC hDC, HGLRC hRC)
{
    wglMakeCurrent(NULL, NULL);
    wglDeleteContext(hRC);
    ReleaseDC(hwnd, hDC);
}

void scanLine(GLfloat lineColors[3*160], int thisline){
    int i;
    for(i = 0; i<160*3; i++){
        colors[160*(thisline)*3 + i] = lineColors[i];
    }
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glPointSize(1.0f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);

    glColorPointer(3, GL_FLOAT, 0, colors);
    glVertexPointer(2, GL_FLOAT, 0, vertices);
    glDrawArrays(GL_POINTS, 0, 160*144);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
}

void drawScreen(){
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glPointSize(1.0f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);

    glColorPointer(3, GL_FLOAT, 0, colors);
    glVertexPointer(2, GL_FLOAT, 0, vertices);
    glDrawArrays(GL_POINTS, 0, 160*144);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);

    SwapBuffers(hDC);
}
