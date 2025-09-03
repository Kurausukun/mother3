	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x98
	lsls r0, r0, #6
	adds r4, r6, r0
	ldr r1, _0803EB48
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803EB32
_0803EB00:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803EB26
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001B18
_0803EB26:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _0803EB00
_0803EB32:
	ldr r0, _0803EB4C
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _0803EB54
	ldr r1, _0803EB50
	adds r0, r6, r1
	b _0803EB56
	.align 2, 0
_0803EB48: .4byte 0x000076D9
_0803EB4C: .4byte 0x00006C44
_0803EB50: .4byte 0x00006C38
_0803EB54:
	adds r0, r1, #0
_0803EB56:
	str r0, [r2]
	ldr r2, _0803EB70
	adds r0, r6, r2
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _0803EB74
	adds r0, r6, r2
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EB70: .4byte 0x00006C44
_0803EB74: .4byte 0x000076D9
	.syntax divided
