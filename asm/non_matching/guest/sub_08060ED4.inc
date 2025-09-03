	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _08060F5C
	ldr r3, [r6]
	cmp r3, #0
	bne _08060F28
	ldr r0, _08060F60
	movs r1, #0x1e
	movs r2, #0x90
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x3c
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x5a
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x78
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x96
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xb4
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xd2
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	strh r3, [r0]
	strh r3, [r0, #2]
	movs r0, #1
	str r0, [r6]
_08060F28:
	ldr r1, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060F64
	ldr r1, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08060F60
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	b _08060F6E
	.align 2, 0
_08060F5C: .4byte gUnknown_020021A8
_08060F60: .4byte gUnknown_02002188
_08060F64:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
_08060F6E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
