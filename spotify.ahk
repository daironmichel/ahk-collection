#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2

; "fn + F5"  for previous
Media_Prev::
DetectHiddenWindows, On
ControlSend, ahk_parent, ^{Left}, ahk_class SpotifyMainWindow
DetectHiddenWindows, Off
return


; "fn + F7"  for next
Media_Next::
{
DetectHiddenWindows, On
ControlSend, ahk_parent, ^{Right}, ahk_class SpotifyMainWindow
DetectHiddenWindows, Off
return
}

; "fn + F6"  for pause
Media_Play_Pause::
{
DetectHiddenWindows, On
ControlSend, ahk_parent, Space, ahk_class SpotifyMainWindow
DetectHiddenWindows, Off
return
}

; "fn + F3"  for volume up
Volume_Up::
{
DetectHiddenWindows, On
ControlSend, ahk_parent, ^{Up}, ahk_class SpotifyMainWindow
DetectHiddenWindows, Off
return
}

; "fn + F1"  for volume down
Volume_Down::
{
DetectHiddenWindows, On
ControlSend, ahk_parent, ^{Down}, ahk_class SpotifyMainWindow
DetectHiddenWindows, Off
return
}
