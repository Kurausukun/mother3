	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807194E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08071948
	adds r0, r5, #0
	bl sub_080719C4
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_08071948:
	adds r0, r5, #0
	bl sub_08071954
_0807194E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
