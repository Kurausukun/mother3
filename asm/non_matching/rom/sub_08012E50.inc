	.syntax unified
sub_08012E50:
	push {r4, r5, r6, r7, lr}
	ldr r5, _08012EA0
	movs r7, #0
_08012E56:
	ldrb r1, [r5, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E8E
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08012EA4
	adds r4, r1, r0
	ldr r6, [r4]
	ldr r0, [r4, #4]
	ldrb r1, [r6, #4]
	bl sub_08013778
	movs r2, #0
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08012E88
	strh r2, [r5, #8]
_08012E88:
	str r6, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
_08012E8E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x10
	cmp r7, #0x13
	bls _08012E56
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012EA0: .4byte gUnknown_0200C07C
_08012EA4: .4byte gUnknown_0200BF50
	.syntax divided
