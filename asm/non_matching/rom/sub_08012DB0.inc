	.syntax unified
sub_08012DB0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r0, sp, #4
	strh r2, [r0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08012E4C
	adds r5, r0, r1
	ldr r6, [r5]
	ldrb r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E42
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08012E42
	add r4, sp, #8
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r2, #0x1f
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #0x3f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	strh r7, [r4, #8]
	ldr r0, [r5, #4]
	ldrb r1, [r6, #4]
	bl sub_08013778
	strh r0, [r4, #0xa]
	str r6, [sp, #8]
	ldr r5, [r5, #4]
	str r5, [r4, #4]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08013748
	adds r5, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bl sub_080136BC
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x1c
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801365C
_08012E42:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012E4C: .4byte gUnknown_0200BF50
	.syntax divided
