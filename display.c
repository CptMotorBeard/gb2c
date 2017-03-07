#include <stdio.h>
#include <stdlib.h>
#include "hardware.h"
#include "gpu.h"
#include "cpu.h"
#include "interrupts.h"
#include "display.h"

void printBGMAP(){
	int i = 0;
	while (i < 0x400) {
		BYTE loc = cpu[0x9800 + i];
		printf("%02X ", loc);
		i++;
		if (i%32 == 0) printf("\n");
	}
}

void setJoypad() {
	if (!(cpu[0xFF00] & 0x20)){
		cpu[0xFF00] = (BYTE) (0xC0 | keys.keys1.a | keys.keys1.b << 1| keys.keys1.select << 2 | keys.keys1.start << 3 | 0x10);
	}
	else if (!(cpu[0xFF00] & 0x10)){
		cpu[0xFF00] = (BYTE) (0xC0 | keys.keys2.right | keys.keys2.left << 1| keys.keys2.up << 2 | keys.keys2.down << 3 | 0x20);
	}
	else if (!(cpu[0xFF00] & 0x30)) {cpu[0xFF00] = 0xFF;}
	else cpu[0xFF00] = 0xCF;
}

GLfloat vertices[2*160*144];
GLfloat colors[3*160*144];

int read (char* input) {
	FILE *rom = fopen(input, "rb");
	if ( rom == 0) {
			printf( "Could not open file\n" );
			return 0;
	} else {
		fread(cpu, 1, romSize, rom);
		fclose(rom);
		return 1;
	}
}
HDC hDC;
int WINAPI WinMain(HINSTANCE hInstance,
                   HINSTANCE hPrevInstance,
                   LPSTR lpCmdLine,
                   int nCmdShow)
{
	initialize();
	if (!read(lpCmdLine)) {exit(1);}
	
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
                          320,
                          288,
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
	
	/////////////// MAIN PROGRAM LOOP ///////////////
	
	int c;	
	
	while (!bQuit)
    {
		cpu[0xFF04] = (BYTE)rand();		///// This is the timer, for now a random number works
		setJoypad();
		c = cpuStep();
		gpuStep(c);
		interruptStep();
		if (interrupt.timer == 0x01) {interrupt.timer = 0xFF; interrupt.master = 1;}	// EI after one more cycle
		else if (interrupt.timer == 0x00) {interrupt.timer = 0xFF; interrupt.master = 0;} // DI after one more cycle
		
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
    }
	
	/////////////// END OF MAIN PROGRAM LOOP ///////////////
	
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
		case WM_CREATE:
			return 0;
			
        case WM_CLOSE:
            PostQuitMessage(0);
			return 0;

        case WM_DESTROY:
            return 0;
		
		// JOYPAD CONTROLS
        case WM_KEYDOWN:
            switch (wParam) {
				// Right joypad down
                case VK_RIGHT:
					keys.keys2.right = 0;
					stopped = 0;
					break;
				
				// Left joypad down
				case VK_LEFT:
					keys.keys2.left = 0;
					stopped = 0;
					break;
				
				// Up joypad down
				case VK_UP:
					keys.keys2.up = 0;
					stopped = 0;
					break;
					
				// Down joypad down
				case VK_DOWN:
					keys.keys2.down = 0;
					stopped = 0;
					break;
					
				// A joypad down
				case 'X':
					keys.keys1.a = 0;
					stopped = 0;
					break;
				
				// B joypad down
				case 'Z':
					keys.keys1.b = 0;
					stopped = 0;
					break;
					
				// Select joypad down
				case VK_BACK:
					keys.keys1.select = 0;
					stopped = 0;
					break;
				
				// Start joypad down
				case VK_RETURN:
					keys.keys1.start = 0;
					stopped = 0;
					break;
            }
			return 0;
		
		case WM_KEYUP:
            switch (wParam) {
				// Right joypad up
                case VK_RIGHT:
					keys.keys2.right = 1;
					stopped = 0;
					break;
				
				// Left joypad up
				case VK_LEFT:
					keys.keys2.left = 1;
					stopped = 0;
					break;
				
				// Up joypad up
				case VK_UP:
					keys.keys2.up = 1;
					stopped = 0;
					break;
					
				// Down joypad up
				case VK_DOWN:
					keys.keys2.down = 1;
					stopped = 0;
					break;
					
				// A joypad up
				case 'X':
					keys.keys1.a = 1;
					stopped = 0;
					break;
				
				// B joypad up
				case 'Z':
					keys.keys1.b = 1;
					stopped = 0;
					break;
					
				// Select joypad up
				case VK_BACK:
					keys.keys1.select = 1;
					stopped = 0;
					break;
				
				// Start joypad up
				case VK_RETURN:
					keys.keys1.start = 1;
					stopped = 0;
					break;
            }
			return 0;
		
        default:
            return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }
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
}

void drawScreen(){
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glPointSize(2.0f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);

    glColorPointer(3, GL_FLOAT, 0, colors);
    glVertexPointer(2, GL_FLOAT, 0, vertices);
    glDrawArrays(GL_POINTS, 0, 160*144);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);

    SwapBuffers(hDC);
}
