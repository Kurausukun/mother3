	.syntax unified
sub_080A0EE0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0xa6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080A1FC0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
