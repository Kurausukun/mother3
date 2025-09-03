	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0x12]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _08013CBE
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldrb r0, [r4, #0x1e]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r1, r0
	blt _08013C86
	strh r3, [r4, #0xc]
_08013C86:
	strh r3, [r4, #0x12]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r2, #0
	bl sub_0801B414
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x1b
	str r5, [sp]
	adds r3, r6, #0
	bl sub_080036E8
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1b
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0803B724
_08013CBE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
