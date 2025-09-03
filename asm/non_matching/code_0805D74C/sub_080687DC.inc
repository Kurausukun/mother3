	.syntax unified
sub_080687DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, [r6]
	cmp r0, #8
	bhi _0806886E
	lsls r0, r0, #2
	ldr r1, _080687FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080687FC: .4byte _08068800
_08068800:
	.4byte _0806886E
	.4byte _0806886E
	.4byte _0806886E
	.4byte _08068824
	.4byte _08068824
	.4byte _0806884E
	.4byte _0806886E
	.4byte _0806886E
	.4byte _0806886E
_08068824:
	ldrh r0, [r6, #0xe]
	ldrh r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r4, r0, #1
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	adds r4, r4, r0
	ldr r0, [r5, #0x18]
	adds r0, r0, r4
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x20]
	cmp r1, r0
	ble _0806884A
	adds r1, r0, #0
_0806884A:
	str r1, [r5, #0x18]
	b _0806886E
_0806884E:
	ldrh r0, [r6, #0xe]
	ldrh r1, [r6, #0x10]
	adds r0, r0, r1
	lsrs r0, r0, #1
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	strh r0, [r5, #0x1c]
	movs r3, #0x1c
	ldrsh r2, [r5, r3]
	movs r4, #0x24
	ldrsh r0, [r5, r4]
	adds r1, r0, #0
	cmp r0, r2
	ble _0806886C
	adds r1, r2, #0
_0806886C:
	strh r1, [r5, #0x1c]
_0806886E:
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _08068894
	ldrb r1, [r6, #0x14]
	cmp r1, #1
	bne _08068886
	subs r0, #1
	lsls r1, r0
	ldrh r0, [r5, #0x30]
	orrs r1, r0
	strh r1, [r5, #0x30]
	b _08068894
_08068886:
	ldrb r0, [r6, #0x12]
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r5, #0x30]
	bics r0, r1
	strh r0, [r5, #0x30]
_08068894:
	mov r0, r8
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
