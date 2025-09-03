	.syntax unified
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080029D0
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080029D0: .4byte gSave
	.syntax divided
