#ifndef GPU_H_INCLUDED
#define GPU_H_INCLUDED
#include "gpu.h"
#endif // GPU_H_INCLUDED
#include <windows.h>
#include <gl/gl.h>
#include <stdio.h>


void scanLine(GLfloat[], int);
LRESULT CALLBACK WindowProc(HWND, UINT, WPARAM, LPARAM);
void EnableOpenGL(HWND hwnd, HDC*, HGLRC*);
void DisableOpenGL(HWND, HDC, HGLRC);


