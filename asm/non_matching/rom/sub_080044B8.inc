	.syntax unified
	push {r4, r5, r6, lr}
	ldr r3, _08004514
	ldr r0, _08004518
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080044FE
	adds r4, r3, #0
	adds r6, r2, #0
	movs r1, #0x11
	rsbs r1, r1, #0
	adds r5, r1, #0
_080044D8:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080044F6
	bl sub_0800451C
	ldrb r0, [r4, #3]
	ands r0, r5
	strb r0, [r4, #3]
_080044F6:
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080044D8
_080044FE:
	ldr r0, _08004514
	ldr r1, _08004518
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004514: .4byte gGame
_08004518: .4byte 0x00009D14
	.syntax divided
