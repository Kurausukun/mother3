	.syntax unified
combo_110__5Combo:
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
	.syntax divided
