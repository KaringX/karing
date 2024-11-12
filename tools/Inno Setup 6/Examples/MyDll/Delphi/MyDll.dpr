library MyDll;

uses
  Windows;

procedure MyDllFunc(hWnd: Integer; lpText, lpCaption: PAnsiChar; uType: Cardinal); stdcall;
begin
  MessageBoxA(hWnd, lpText, lpCaption, uType);
end;

exports MyDllFunc;

begin
end.
