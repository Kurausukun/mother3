	.syntax unified
sub_080B21D0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #3
	bl playSound
	adds r0, r4, #0
	bl tellUseMessage__6Action
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
