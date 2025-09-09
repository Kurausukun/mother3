	.syntax unified
sub_080B13F8:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B1410
	bl PlaySoundBlocking
	adds r0, r4, #0
	bl tellUseMessage__6Action
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1410: .4byte 0x0000055F
	.syntax divided
