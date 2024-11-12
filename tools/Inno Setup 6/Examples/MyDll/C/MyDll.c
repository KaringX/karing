#include <windows.h>

void __stdcall MyDllFunc(HWND hWnd, char *lpText, char *lpCaption, UINT uType)
{
  MessageBox(hWnd, lpText, lpCaption, uType);
}