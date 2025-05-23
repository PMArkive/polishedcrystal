_ResetClock:
	farcall BlankScreen
	ld a, CGB_PLAIN
	call GetCGBLayout
	call LoadStandardFont
	call LoadFrame
	call BlackOutScreen
	ld e, MUSIC_MAIN_MENU
	call PlayMusic
	ld hl, .text_askreset
	call PrintText
	ld hl, NoYesMenuDataHeader
	call CopyMenuHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	dec a
	ret z
	ld a, BANK(sRTCStatusFlags)
	call GetSRAMBank
	ld a, $80
	ld [sRTCStatusFlags], a
	call CloseSRAM
	ld hl, .text_okay
	jmp PrintText

.text_okay
	; Select CONTINUE & reset settings.
	text_far _PasswordAskResetText
	text_end

.text_askreset
	; Reset the clock?
	text_far _PasswordAskResetClockText
	text_end
