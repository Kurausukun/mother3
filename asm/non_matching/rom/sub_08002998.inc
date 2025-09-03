	.syntax unified
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080029B8
	lsrs r0, r0, #0x11
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r2, r1
	lsls r2, r2, #2
	asrs r0, r2
	movs r1, #0xf
	ands r0, r1
	bx lr
	.align 2, 0
_080029B8: .4byte gSave
	.syntax divided
