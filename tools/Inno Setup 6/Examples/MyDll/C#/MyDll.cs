using System;

using System.Runtime.InteropServices;
using RGiesecke.DllExport;

namespace Mydll
{
    public class Mydll
    {
      [DllExport("MyDllFunc", CallingConvention=CallingConvention.StdCall)]
      public static void MyDllFunc(IntPtr hWnd, [MarshalAs(UnmanagedType.LPStr)] string text, [MarshalAs(UnmanagedType.LPStr)] string caption, int options)
      {
        MessageBox(hWnd, text, caption, options);
      }

      [DllExport("MyDllFuncW", CallingConvention=CallingConvention.StdCall)]
      public static void MyDllFuncW(IntPtr hWnd, string text, string caption, int options)
      {
        MessageBox(hWnd, text, caption, options);
      }

      [DllImport("user32.dll", CharSet=CharSet.Auto)]
      static extern int MessageBox(IntPtr hWnd, String text, String caption, int options);
    }
}
