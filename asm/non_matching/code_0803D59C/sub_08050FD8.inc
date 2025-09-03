	.syntax unified
	movs r2, #0x6f
	adds r2, r2, r0
	mov ip, r2
	ldrb r2, [r2]
	movs r3, #0x40
	orrs r2, r3
	mov r3, ip
	strb r2, [r3]
	adds r0, #0x62
	strb r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
