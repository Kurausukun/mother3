	.syntax unified
	adds r3, r0, #0
	movs r0, #0xc7
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r2, #1
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrh r1, [r1, #2]
	adds r0, r3, #0
	adds r0, #0xba
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xb9
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r1, _0802F300
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F300: .4byte gObjectContinue
	.syntax divided
