	.syntax unified
sub_08081AE8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_080639FC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
