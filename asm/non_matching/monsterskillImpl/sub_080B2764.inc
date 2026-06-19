	.syntax unified
sub_080B2764:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B277C
	bl PlaySoundBlocking
	adds r0, r4, #0
	bl tellUseMessage__6Action
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B277C: .4byte 0x0000055F
	.syntax divided
