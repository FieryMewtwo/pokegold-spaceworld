INCLUDE "constants.asm"

SECTION "Sprite Buffers", SRAM

sSpriteBuffer0:: ds SPRITEBUFFERSIZE ; a000
sSpriteBuffer1:: ds SPRITEBUFFERSIZE ; a188
sSpriteBuffer2:: ds SPRITEBUFFERSIZE ; a310

SECTION "Unknown, bank 0", SRAM

s0_a600:: ; TODO: properly label this
    ds 7 ; TODO: figure out exact size

SECTION "Window Stack Top", SRAM
sWindowStackTop:: dw