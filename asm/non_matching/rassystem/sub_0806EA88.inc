	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806EAA8
	adds r0, r5, #0
	bl sub_0806EAC8
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_0806EAA8:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806EAC0
	adds r0, r5, #0
	bl sub_0806EB2C
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4]
_0806EAC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
