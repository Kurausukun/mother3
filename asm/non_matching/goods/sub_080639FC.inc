	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r3, _08063A70
	ldr r0, [r3]
	cmp r0, #0
	bne _08063A3E
	ldr r0, _08063A74
	movs r1, #0x78
	movs r2, #0x50
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x7e
	movs r2, #0x5a
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x6a
	movs r2, #0x3c
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x38
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xb8
	strh r1, [r0]
	strh r2, [r0, #2]
	movs r0, #1
	str r0, [r3]
_08063A3E:
	ldr r1, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063A78
	ldr r1, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08063A74
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	b _08063A82
	.align 2, 0
_08063A70: .4byte gUnknown_0200251C
_08063A74: .4byte gUnknown_02002508
_08063A78:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
_08063A82:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
