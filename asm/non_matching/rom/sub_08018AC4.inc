	.syntax unified
sub_08018AC4:
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08018B0C
	adds r4, r1, r0
	cmp r3, #0
	bne _08018AE0
	movs r3, #1
_08018AE0:
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	strh r3, [r4, #0x1a]
	strh r5, [r4, #0x32]
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018B10
	strh r5, [r4, #0x2c]
	strh r5, [r4, #0x2e]
	ldrh r0, [r6]
	lsls r0, r0, #4
	strh r0, [r4, #0x28]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	b _08018B28
	.align 2, 0
_08018B0C: .4byte gUnknown_0200B4B0
_08018B10:
	ldrh r2, [r4, #4]
	strh r2, [r4, #0x2c]
	ldrh r3, [r4, #6]
	strh r3, [r4, #0x2e]
	ldrh r1, [r6]
	lsls r1, r1, #4
	strh r1, [r4, #0x28]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	adds r1, r1, r2
	strh r1, [r4, #0x28]
	adds r0, r0, r3
_08018B28:
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
