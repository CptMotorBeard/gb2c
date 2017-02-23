#include "display.h"

GLfloat vertices[2*160*144];
GLfloat colors[3*160*144];

int WINAPI WinMain(HINSTANCE hInstance,
                   HINSTANCE hPrevInstance,
                   LPSTR lpCmdLine,
                   int nCmdShow)
{
    WNDCLASSEX wcex;
    HWND hwnd;
    HDC hDC;
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
    for(x = 0;x<160; x++){
        int i;
        for(i= 0;i<144;i++){
            vertices[(x*160 + i)*2] = -1.0f + ((float)i/80.0f);
            vertices[(x*160 + i)*2 + 1] = (float)x/80.0f - 1.0f;
            colors[(x*160 + i)*3] = 1.0f;
            colors[(x*160 + i)*3 + 1] = 1.0f;
            colors[(x*160 + i)*3 + 2] = 1.0f;
        }

    }
    /* enable OpenGL for the window */
    EnableOpenGL(hwnd, &hDC, &hRC);
    int frames = 0;
    /* program main loop */
    while (!bQuit)
    {
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
                printf("%d\n",msg.message);
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }
        }
        else
        {
            /* OpenGL animation code goes here */



            frames++;
            glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            glClear(GL_COLOR_BUFFER_BIT);
            glPointSize(1.0f);

            glEnableClientState(GL_VERTEX_ARRAY);
            glEnableClientState(GL_COLOR_ARRAY);

            glColorPointer(3, GL_FLOAT, 0, colors);
            glVertexPointer(2, GL_FLOAT, 0, vertices);
            glDrawArrays(GL_POINTS, 0, 256*256);

            glDisableClientState(GL_VERTEX_ARRAY);
            glDisableClientState(GL_COLOR_ARRAY);

            SwapBuffers(hDC);
        }
    }
    printf("%d",frames);
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


}