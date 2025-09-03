	.syntax unified
sub_0800E338:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0800E38C
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r3, _0800E388
	ldrh r2, [r4, #2]
	cmp r0, #0
	bge _0800E38C
	ldrh r0, [r5]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp]
	ands r1, r3
	orrs r1, r0
	str r1, [sp]
	ldrh r0, [r5, #2]
	adds r1, r2, r0
	mov r0, sp
	strh r1, [r0, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E450
	b _0800E3C4
	.align 2, 0
_0800E388: .4byte 0xFFFF0000
_0800E38C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldrh r1, [r4]
	cmp r0, #0
	bge _0800E408
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E3CA
	ldrh r0, [r5]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #2]
	subs r0, r0, r2
	mov r1, sp
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E4A0
_0800E3C4:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E446
_0800E3CA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #1
	rsbs r3, r3, #0
	ldrh r1, [r4]
	cmp r0, r3
	bgt _0800E408
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, r3
	bgt _0800E408
	ldrh r0, [r5]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #2]
	adds r1, r2, r0
	mov r0, sp
	strh r1, [r0, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E450
	b _0800E43A
_0800E408:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800E440
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #2]
	cmp r0, #0
	ble _0800E440
	ldrh r0, [r5]
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r5, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r5, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800E4A0
_0800E43A:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E446
_0800E440:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
_0800E446:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
