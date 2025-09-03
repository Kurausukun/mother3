	.syntax unified
sub_0807C5F8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08060ED4
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
