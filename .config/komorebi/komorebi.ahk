#Requires AutoHotkey v2.0.2
#SingleInstance Force

; Thin wrapper around komorebic, matching Komorebi's current AHK v2 examples.
Komorebic(cmd) {
    RunWait(Format("komorebic.exe {}", cmd), , "Hide")
}

; Remap Alt+Space -> Alt+Shift+Space
; Intercepts the normal Windows Alt+Space system menu
$!Space::Send("^!{Space}")

; --- App launchers ---
!w::Run(A_ProgramFiles "\Mozilla Firefox\firefox.exe")
!+a::Run('"' A_ProgramFiles '\Git\bin\bash.exe" -lc "~/.local/bin/yt-jp"')
; !t::Run("wt.exe")
!t::Run('"' A_ProgramFiles '\WezTerm\wezterm-gui.exe"')

; --- Screenshot / Screen Record ---
!e::Run("snippingtool.exe")
!+e::Run("ms-screenclip:")
!g::Send("^{PrintScreen}")
!+g::Send("#{PrintScreen}")

; --- Reload / pause / hotkey control ---
!r::Komorebic("reload-configuration")
!+r::Reload()
!+p::Komorebic("toggle-pause")
!+i::Komorebic("toggle-shortcuts")

; --- Focus windows ---
!h::Komorebic("focus left")
!l::Komorebic("focus right")
!k::Komorebic("focus up")
!j::Komorebic("focus down")

; --- Cycle focus / stack ---
!+[::Komorebic("cycle-focus previous")
!+]::Komorebic("cycle-focus next")
![::Komorebic("cycle-stack previous")
!]::Komorebic("cycle-stack next")
!;::Komorebic("unstack")

; --- Move windows ---
!+h::Komorebic("move left")
!+l::Komorebic("move right")
!+k::Komorebic("move up")
!+j::Komorebic("move down")
!+Enter::Komorebic("promote")

; --- Stack windows ---
!Left::Komorebic("stack left")
!Right::Komorebic("stack right")
!Up::Komorebic("stack up")
!Down::Komorebic("stack down")

; --- Resize ---
!u::Komorebic("resize-axis horizontal decrease")
!p::Komorebic("resize-axis horizontal increase")
!o::Komorebic("resize-axis vertical increase")
!i::Komorebic("resize-axis vertical decrease")

; --- Layout / window state ---
!v::Komorebic("flip-layout horizontal")
!y::Komorebic("flip-layout vertical")
!+Space::Komorebic("toggle-float")
!f::Komorebic("toggle-monocle")
!m::Komorebic("minimize")
!x::Komorebic("close")

; --- Focus a workspace ---
!1::Komorebic("focus-workspace 0")
!2::Komorebic("focus-workspace 1")
!3::Komorebic("focus-workspace 2")
!4::Komorebic("focus-workspace 3")
!5::Komorebic("focus-workspace 4")
!6::Komorebic("focus-workspace 5")
!7::Komorebic("focus-workspace 6")

; --- Move focused window to a workspace ---
!+1::Komorebic("move-to-workspace 0")
!+2::Komorebic("move-to-workspace 1")
!+3::Komorebic("move-to-workspace 2")
!+4::Komorebic("move-to-workspace 3")
!+5::Komorebic("move-to-workspace 4")
!+6::Komorebic("move-to-workspace 5")
!+7::Komorebic("move-to-workspace 6")
