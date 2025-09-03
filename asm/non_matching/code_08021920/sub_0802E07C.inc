	.syntax unified
sub_0802E07C:
	movs r1, #0xcb
	adds r1, r1, r0
	mov ip, r1
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	adds r0, #0xc4
	lsrs r2, r2, #0x1f
	lsls r2, r2, #1
	ldrb r3, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
	.syntax divided
