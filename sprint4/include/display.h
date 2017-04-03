#ifndef GPU_H_INCLUDED
#define GPU_H_INCLUDED
#include "gpu.h"
#endif // GPU_H_INCLUDED
#include <windows.h>
#include <GL/gl.h>

typedef struct{
    unsigned char signature[2];
    unsigned int filesize;
    short reserves[2];
    unsigned int bfoffset;
} fileheader;
typedef struct{
    unsigned int biSize;
    unsigned int biWidth;
    unsigned int biHeight;
    short biPlanes;
    short biBitCount;
    unsigned int biCompression;
    unsigned int biSizeImage;
    unsigned int biXPelsPerMeter;
    unsigned int biYPelsPerMeter;
    unsigned int biClrUsed;
    unsigned int biClrImportant;
}bitmapheader;
typedef struct{
    char b;
    char g;
    char r;
}pixel;

int loadToMem();
void drawScreen();
void scanLine(GLfloat[], int);
LRESULT CALLBACK WindowProc(HWND, UINT, WPARAM, LPARAM);
void EnableOpenGL(HWND hwnd, HDC*, HGLRC*);
void DisableOpenGL(HWND, HDC, HGLRC);
void makeBitmap(char filename[], unsigned int width, unsigned int height, int data[]);
void takeScreenShot();
void showLayers();
