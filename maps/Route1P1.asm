include "constants.asm"
INCLUDE "hack/text/Route1P1.inc"

SECTION "maps/Route1P1.asm", ROMX

Route1P1ScriptLoader:: ; 7B98
	ld hl, Route1P1ScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret
	
Route1P1ScriptPointers: ; 7BA2
	dw Route1P1Script
	dw Route1P1NPCIDs
	
Route1P1NPCIDs: ; 7BA6
	db 0
	db 1
	db $FF
	
Route1P1SignPointers: ; 7BA9
	dw Route1P1TextSign1
	dw Route1P1TextSign2

Route1P1TextPointers::
	dw Route1P1TextNPC1
	dw Route1P1TextNPC2
	
Route1P1Script:: ; 7BB1
	ld hl, Route1P1NPCIDs
	ld de, Route1P1SignPointers
	call CallMapTextSubroutine
	ret

Route1P1TextNPC1: ; 7BBB
	ld hl, Route1P1TextString1
	call OpenTextbox
	ret
	
Route1P1TextNPC2: ; 7BC2
	ld hl, Route1P1TextString2
	call OpenTextbox
	ret
	
Route1P1TextSign1: ; 7BC9
	ld hl, Route1P1TextString3
	call OpenTextbox
	ret
	
Route1P1TextSign2: ; 7BD0
	ld hl, Route1P1TextString4
	call OpenTextbox
	ret
	
Route1P1TextString1: ; 7BD7
	text_Route1P1TextString1
	
Route1P1TextString2: ; 7C08
	text_Route1P1TextString2
	
Route1P1TextString3: ; 7C2A
	text_Route1P1TextString3
	
Route1P1TextString4:; 7C48
	text_Route1P1TextString4
	
; 7C68