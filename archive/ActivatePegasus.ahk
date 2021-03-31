#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

sleep, 1000
if WinExist("Pegasus")
    WinActivate

sleep, 2000

if WinExist("BlackScreen")
{
    WinClose
    Process,Close, BlackScreen.exe
}
ExitApp