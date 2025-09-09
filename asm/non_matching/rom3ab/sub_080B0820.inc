	.syntax unified
sub_080B0820:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0838
	bl playSound
	adds r0, r4, #0
	bl tellUseMessage__6Action
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0838: .4byte 0x0000044C
	.syntax divided
