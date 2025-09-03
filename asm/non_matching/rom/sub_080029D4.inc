	.syntax unified
sub_080029D4:
	lsls r0, r0, #0x10
	ldr r2, _080029F4
	lsrs r0, r0, #0xf
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_080029F4: .4byte gSave
	.syntax divided
