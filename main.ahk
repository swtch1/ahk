;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Main AutoHotkey file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Paste SSO + tab
+F1::
	SendInput, joshua_thornton1@homedepot.com`t
Return

;; Default Explorer shortcut to important files - Currently doesn't work
#e::
	run explorer.exe C:\important
Return

;; Open Ubuntu
^!u::
	run "C:\Windows\System32\bash.exe"
Return

;; Always on top
+F4::
	Winset, Alwaysontop, , A
Return

;;[::Send {Esc}
;;;;;;;;;;;;;;;;;;;;;;
;; Caps Lock Modifiers
;; CapsLock has been remapped to F13 with SharpKeys to avoid issues when CapsLock is turned on.
;F13::Send {Esc}

;; stop using this right now
;;+F13::Send {LShift down}{Insert}{LShift up}	

F13 & 9::Send {(}
F13 & 0::Send {)}
F13 & i::Send {[}
F13 & o::Send {]}
F13 & d::Send {{}
F13 & f::Send {}}
F13 & '::Send {backspace}
F13 & `;::Send {:}
F13 & /::Send {Ctrl Down}/{Ctrl Up}
F13 & b::Send {Ctrl Down}b{Ctrl Up}
F13 & c::Send {Ctrl Down}c{Ctrl Up}
F13 & v::Send {LShift down}{Insert}{LShift up}
F13 & a::Send {Ctrl Down}a{Ctrl Up}
F13 & e::Send {Ctrl Down}e{Ctrl Up}
F13 & w::Send {Ctrl Down}w{Ctrl Up}
F13 & q::Send {Ctrl Down}q{Ctrl Up}
F13 & r::Send {Ctrl Down}r{Ctrl Up}
F13 & ,::Send {Ctrl Down},{Ctrl Up}
F13 & .::Send {Ctrl Down}.{Ctrl Up}
F13 & Enter:: Send {Ctrl down}{Enter}{Ctrl up}
F13 & t::
	Send {Ctrl down}
	Sleep 55
	Send {Tab}
	Sleep 55
	Send {Ctrl up}

F13 & h::Send, {Left}
F13 & j::Send, {Down}
F13 & k::Send, {Up}
F13 & l::Send, {Right}

F13 & 1::Send, {Ctrl Down}1{Ctrl Up}
F13 & 2::Send, {Ctrl Down}2{Ctrl Up}
F13 & 3::Send, {Ctrl Down}3{Ctrl Up}
F13 & 4::Send, {Ctrl Down}4{Ctrl Up}
F13 & 5::Send, {Ctrl Down}5{Ctrl Up}
F13 & 6::Send, {Ctrl Down}6{Ctrl Up}
F13 & 7::Send, {Ctrl Down}7{Ctrl Up}
F13 & 8::Send, {Ctrl Down}8{Ctrl Up}

;; ] has been remapped to F14 with SharpKeys so that it doesn't interfere with the key that sends ]
F14::Send {Esc}

;; Close tab
!x::Send ^{F4}

;; Close Window
!z::Send {Alt Down}{F4}{Alt Up}

;; Write text forever.
+F2::
	Loop {
		Send a
		Sleep, 10000
	}
Return

;; Move windows to the right place.
+F3::
	SetTitleMatchMode RegEx

	; Slack
	SetTitleMatchMode, 1
	WinActivate, Slack
	WinRestore, Slack
	WinMove, ahk_exe slack.exe, , -2150, 665, 1000, 800
	WinMaximize, ahk_exe slack.exe

	; Hot Notes
	WinActivate, ahk_exe hottnotes.exe
	WinMove, ahk_exe hottnotes.exe, , -2479, 667

	; Outlook
	WinActivate, ahk_class rctrl_renwnd32
	WinRestore, ahk_class rctrl_renwnd32
	WinMove, ahk_class rctrl_renwnd32, , 200, 40, 1200, 800
	WinMaximize, ahk_class rctrl_renwnd32

	; Vivaldi
	WinActivate, ahk_exe vivaldi.exe
	WinRestore, ahk_exe vivaldi.exe
	WinMove, ahk_exe vivaldi.exe, , 160, 70, 1400, 900
	WinMaximize, ahk_exe vivaldi.exe

	; PyCharm
	WinActivate, ahk_exe pycharm64.exe
	WinRestore, ahk_exe pycharm64.exe
	WinMove, ahk_exe pycharm64.exe, , 170, 80, 1400, 900
	WinMaximize, ahk_exe pycharm64.exe
	
	; ConEmu
	WinRestore, ahk_exe ConEmu64.exe
	WinActivate, ahk_exe ConEmu64.exe
	WinMove, ahk_exe ConEmu64.exe, , 2217, 91, 980, 850
	WinMaximize, ahk_exe ComEmu64.exe  ; doesn't work

	; Sublime Text
	WinRestore, ahk_exe sublime_text.exe
	WinActivate, ahk_exe sublime_text.exe
	WinMove, ahk_exe sublime_text.exe, , 2540, 370, 850, 490
	WinMaximize, ahk_exe sublime_text.exe

	; JetBrains Run Window
	;WinActivate, Run
	;WinMove, Run, , 3348, 760, 2122, 2312

	; JetBrains Debug Window
	;WinActivate, Debug
	;WinMove, Debug, , 3348, 760, 2122, 2312

Return

;; Snip and Sketch
PrintScreen::Send {LWin Down}{LShift Down}s{LWin Up}{LShift Up}

;; Media controls
Pause::Send {Media_Play_Pause}
^+Left::Send {Media_Prev}
^+Right::Send {Media_Next}
^+Up::Send {Volume_Up}
^+Down::Send {Volume_Down}

;; Bring JetBrains to front
+F9::
	SetTitleMatchMode RegEx
	WinActivate Favorites -.*
	WinActivate Structure -.*
	WinActivate Project -.*
	WinActivate Debug -.*
	WinActivate Run -.*
	WinActivate Python Console -.*
	WinActivate .*PyCharm.*
	WinActivate .*GoLand.*
	WinActivate Documentation -.*
Return
