;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Main AutoHotkey file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Paste SSO + tab
F1::
	SendInput, 12345`t
Return

;; Default Explorer shortcut to important files - Currently doesn't work
#e::
	run explorer.exe C:\important_files
Return

;; Open Git Bash
^!t::
	run "C:\Program Files\Git\git-bash.exe"
Return

;; Open Ubuntu
^!u::
	run "C:\Windows\System32\bash.exe"
Return

;; Always on top
;^SPACE::
;	Winset, Alwaysontop, , A
;Return

;; Caps lock runs win + tab
CapsLock::
	Send {LWin down}{Tab}{LWin up}
Return

;; Shift caps lock runs shift + insert
+CapsLock::
	Send {LShift down}{Insert}{LShift up}	
Return

;; Close tab
!x::
	Send ^{F4}
return

;; Set vimrc
;;F10::
;;	clipboard = git clone https://github.build.ge.com/212563094/vim.git ~/vimstuff;/bin/mv -f ~/vimstuff/.vimrc ~/vimstuff/bundle ~/;rm -rf ~/vimstuff/;
;;return 

;; Move windows to the right place.
F3::
	SetTitleMatchMode RegEx

	; Spotify
	WinRestore, ahk_class SpotifyMainWindow
	WinMove, ahk_class SpotifyMainWindow, , 2100
	WinMaximize, ahk_class SpotifyMainWindow	

	; Firefox
	WinActivate, ahk_class MozillaWindowClass
	WinRestore, ahk_class MozillaWindowClass
	WinMove, ahk_class MozillaWindowClass, , -1385
	WinMaximize, ahk_class MozillaWindowClass

	; Teams
	SetTitleMatchMode, 2
	WinActivate, Microsoft Teams	
	WinRestore, Microsoft Teams
	WinMove, ahk_exe Teams.exe, , 1079, -209, 1079, 1049

	; Slack
	SetTitleMatchMode, 1
	WinActivate, Slack
	WinRestore, Slack
	WinMove, ahk_exe slack.exe, , 1079, -209, 1079, 1049

	; Outlook
	WinActivate, ahk_class rctrl_renwnd32
	WinRestore, ahk_class rctrl_renwnd32
	WinMove, ahk_class rctrl_renwnd32, , 1080, 840, 1079, 873

	; Vivaldi
	;WinActivate, ahk_exe vivaldi.exe
	;WinMove, ahk_class Chrome_WidgetWin_1, , -1584, 628, 300, 300
	;WinMaximize, ahk_class Chrome_WidgetWin_1
	;WinMaximize, ahk_class Chrome_WidgetWin_1

	; Sublime Text
	WinActivate, ahk_class PX_WINDOW_CLASS
	WinMove, ahk_class PX_WINDOW_CLASS, , -1231, 464, 1238, 1087
Return

;; SnippingTool
PrintScreen::Run "C:\Windows\System32\SnippingTool.exe"

;; Media controls
Pause::Send {Media_Play_Pause}
^Left::Send {Media_Prev}
^Right::Send {Media_Next}
^Up::Send {Volume_Up}
^Down::Send {Volume_Down}

;; Bring PyCharm to front
F9::
	SetTitleMatchMode RegEx
	WinActivate Favorites -.*
	WinActivate Structure -.*
	WinActivate Project -.*
	WinActivate Debug -.*
	WinActivate Run -.*
	WinActivate Python Console -.*
	WinActivate .*PyCharm.*
	WinActivate Documentation -.*
Return

;; Bring all CMDER terminals to the front
F10::
	;WinGet, id, list, ahk_class VirtualConsoleClass
	WinGet, id, list, ahk_class mintty
	Loop, %id%
	{
    		this_id := id%A_Index%
    		WinActivate, ahk_id %this_id%
	}
return

;; vi controls
!h::Send, {Left}
!j::Send, {Down}
!k::Send, {Up}
!l::Send, {Right}
