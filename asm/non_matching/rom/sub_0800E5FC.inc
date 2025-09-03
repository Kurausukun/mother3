	.syntax unified
sub_0800E5FC:
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	ldrh r3, [r1]
	ldr r2, _0800E650
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r5, sp
	strh r0, [r5, #2]
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r4, #0x10
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E632
	ldrh r0, [r5, #2]
	adds r0, #0x10
	strh r0, [r5, #2]
_0800E632:
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801A9D8
	movs r1, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E646
	movs r1, #1
_0800E646:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E650: .4byte 0xFFFF0000
	.syntax divided
