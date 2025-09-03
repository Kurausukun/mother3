	.syntax unified
sub_08012C48:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08012CBC
	adds r4, r0, #0
	cmp r4, #0
	beq _08012C76
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08012C7C
	adds r6, r0, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012C76
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08012C80
_08012C76:
	movs r0, #0
	b _08012CB4
	.align 2, 0
_08012C7C: .4byte gUnknown_0200BF50
_08012C80:
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x1f
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #0x3f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, [r6, #4]
	ldrb r1, [r7, #4]
	bl sub_08013778
	adds r1, r0, #0
	strh r1, [r4, #0xa]
	str r7, [r4]
	ldr r1, [r6, #4]
	str r1, [r4, #4]
_08012CB4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
