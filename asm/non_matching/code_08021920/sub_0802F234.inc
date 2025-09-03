	.syntax unified
	push {lr}
	adds r3, r0, #0
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #1
	beq _0802F26A
	cmp r0, #1
	bgt _0802F24A
	cmp r0, #0
	beq _0802F254
	b _0802F2A4
_0802F24A:
	cmp r0, #2
	beq _0802F280
	cmp r0, #3
	beq _0802F28C
	b _0802F2A4
_0802F254:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0xf
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0802F2A2
_0802F26A:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, #0xf
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0802F2A2
_0802F280:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	b _0802F296
_0802F28C:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
_0802F296:
	strb r0, [r2]
	adds r2, #0xf
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
_0802F2A2:
	strb r0, [r2]
_0802F2A4:
	ldr r1, _0802F2B0
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802F2B0: .4byte gObjectContinue
	.syntax divided
