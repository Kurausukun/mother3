	.syntax unified
sub_0802E0A4:
	movs r1, #0xcb
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r0, #0xc4
	movs r2, #2
	ands r2, r1
	ldrb r3, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr
	.syntax divided
