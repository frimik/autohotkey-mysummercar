#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #IfWinActive, My Summer Car
; 3::WheelUp
; 4::WheelDown
; 5::MButton

SummerCarWheelDownKey := "XButton1"
SummerCarWheelUpKey := "XButton2"
SummerCarWheelSleep := 1
HotKey, *%SummerCarWheelDownKey%, DoWheelDown
HotKey, *%SummerCarWheelUpKey%, DoWheelUp
Return


#If WinActive("My Summer Car")
DoWheelDown:
Loop
{
    Sleep, %SummerCarWheelSleep%
    GetKeyState, state, %SummerCarWheelDownKey%, P
    if state = U
        break
    Send, {WheelDown}
}
return

DoWheelUp:
Loop
{
    Sleep, %SummerCarWheelSleep%
    GetKeyState, state, %SummerCarWheelUpKey%, P
    if state = U
        break
    Send, {WheelUp}
}
return
