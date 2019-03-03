INCLUDE "constants.asm"

SECTION "data/maps/attributes/OldCityPokecenterTimeMachine.asm", ROMX
	map_attributes OldCityPokecenterTimeMachine, OLD_CITY_POKECENTER_TIME_MACHINE, 0

OldCityPokecenterTimeMachine_MapEvents::
	dw $4000 ; unknown

	db 2 ; warp events
	warp_event 2, 7, 4, OLD_CITY_POKECENTER_2F, wOverworldMapBlocks + 58
	warp_event 3, 7, 4, OLD_CITY_POKECENTER_2F, wOverworldMapBlocks + 58

	db 1 ; bg events
	bg_event 15, 3, 0, 1

	db 1 ; person events
	object_event 13, 2, SPRITE_LINK_RECEPTIONIST, SLOW_STEP_UP, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0

OldCityPokecenterTimeMachine_Blocks:: INCBIN "maps/blk/OldCityPokecenterTimeMachine.blk"