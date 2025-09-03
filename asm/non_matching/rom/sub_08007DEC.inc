	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _08007E28
	ldrb r0, [r0]
	cmp r0, #7
	bgt _08007E22
	cmp r0, #6
	blt _08007E22
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_08007E22:
	pop {r0}
	bx r0
	.align 2, 0
_08007E28: .4byte gUnknown_02005080
	.syntax divided
