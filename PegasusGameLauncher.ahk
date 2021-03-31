;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
HideShowTaskbar(hide := hide)
   
HideShowTaskbar(action) {
   static ABM_SETSTATE := 0xA, ABS_AUTOHIDE := 0x1, ABS_ALWAYSONTOP := 0x2
   VarSetCapacity(APPBARDATA, size := 2*A_PtrSize + 2*4 + 16 + A_PtrSize, 0)
   NumPut(size, APPBARDATA), NumPut(WinExist("ahk_class Shell_TrayWnd"), APPBARDATA, A_PtrSize)
   NumPut(action ? ABS_AUTOHIDE : ABS_ALWAYSONTOP, APPBARDATA, size - A_PtrSize)
   DllCall("Shell32\SHAppBarMessage", UInt, ABM_SETSTATE, Ptr, &APPBARDATA)
}	
WA=%A_screenwidth%
HA=%A_screenheight%
MouseMove, WA, HA ,, R

Gui, Color, black

Gui -Caption

Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%

; Store the arguments passed to it
arg1 := A_Args[1]
arg2 := A_Args[2]

; If appropriate, run the steam game
steam(args)
{
   searchString := "steam:"

   IfInString, args, %searchString%
   {
      ; When coming from Pegasus through Launchbox, we need to split the string since it is written incorrectly
      StringSplit, outputArray, args, :
      Run, steam://rungameid/%outputArray3%
   } else {
      ; In case this is used outside the Pegasus/LB combo
      Run, steam://rungameid/%args%
   }
}

; Run the correct command based on whether there is a switch argument
switch arg1
{
   case "-s": ; Steam
      steam(arg2)
   default: ; Everything else
      Run, %arg1%
}


sleep, 10000
WinGetActiveTitle, Title
WinWait, %Title%
WinWaitClose 
ExitApp