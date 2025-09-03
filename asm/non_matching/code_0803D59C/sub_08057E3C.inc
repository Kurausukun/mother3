	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r4, r2, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	cmp r0, #1
	beq _08057E68
	ldrh r1, [r3]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08057E68
	adds r2, #0x38
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	adds r0, #2
	bl sub_08057A14
_08057E68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
