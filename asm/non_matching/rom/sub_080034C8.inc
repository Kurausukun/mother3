	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08003500
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r3, #0xc
	ldrsh r2, [r5, r3]
	ldr r3, [r5, #0x1c]
	lsls r3, r3, #0xe
	lsrs r3, r3, #0x1b
	str r4, [sp]
	subs r4, r6, r4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	bl sub_080035C4
_08003500:
	ldrh r0, [r5, #0x12]
	adds r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	bl sub_08002FD4
	adds r4, r0, #0
	cmp r4, #0
	bne _0800354A
	ldrh r0, [r5, #0x12]
	ldrh r3, [r5, #0xc]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	blo _08003538
	ldrb r2, [r5, #0x1d]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1d]
	strh r4, [r5, #0x12]
	strh r3, [r5, #0xe]
_08003538:
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003546
	subs r0, r3, #1
	b _08003548
_08003546:
	adds r0, r3, #1
_08003548:
	strh r0, [r5, #0xc]
_0800354A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
