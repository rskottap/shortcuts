#Requires AutoHotkey v2.0

; Open WSL terminal for NixOS in normal window (not maximized)
^!b::  ; Ctrl+Alt+B
{
    Run 'wt wsl -d nixos', , "Normal"
}


; Open Obsidian
+!o::  ; Shift+Alt+O
{
    Run "obsidian://open?vault=EchoIQ"
}

; Open File Explorer
+!e::  ; Shift+Alt+E
{
    Run "explorer.exe"
}

^+!p::  ; Ctrl+Shift+Alt+P
{
    text := "#!/usr/bin/env python"
    A_Clipboard := ""                  ; Clear clipboard first
    A_Clipboard := text                ; Assign new value
    ClipWait(1)                        ; Wait up to 1 second for clipboard to update
}

; Minimize active window
^!Space::  ; Ctrl+Alt+Space
{
    WinMinimize "A"
}

; Show desktop (Windows + D)
^!d::  ; Ctrl+Alt+D
{
    Send "#d"
}

; Alt+F10 or Win+Enter: Toggle active window maximize/restore
!F10::
#Enter::
{
    hwnd := WinExist("A")
    if WinGetMinMax(hwnd) = 1  ; If maximized
        WinRestore hwnd
    else
        WinMaximize hwnd
}

; Ctrl+Shift+C = Copy
^+c::
{
    Send("^c")
}

; Ctrl+Shift+V = Paste
^+v::
{
    Send("^v")
}

; Ctrl+, → Open Windows Settings (only on Desktop)
^,::
{
    ; Check if current window is Desktop ("Program Manager")
    if WinGetClass("A") = "Progman"
        Run "ms-settings:"
}