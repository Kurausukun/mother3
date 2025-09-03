	.syntax unified
sub_0800D814:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	beq _0800D846
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0800E338
	b _0800DA7E
_0800D846:
	ldr r2, _0800D85C
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800D864
	mov r1, sp
	ldr r3, _0800D860
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	b _0800D86E
	.align 2, 0
_0800D85C: .4byte gGame
_0800D860: .4byte 0x00008382
_0800D864:
	mov r1, sp
	ldr r3, _0800D888
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
_0800D86E:
	lsrs r0, r0, #0x1f
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800D88C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0800DA8C
	b _0800DA7E
	.align 2, 0
_0800D888: .4byte 0x000082B7
_0800D88C:
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, _0800D8F4
	ldrh r1, [r7]
	cmp r0, #0
	bge _0800D90A
	movs r3, #2
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bne _0800D90A
	ldrh r0, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r6, #2]
	add r4, sp, #8
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D8CC
	b _0800DA78
_0800D8CC:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D8F8
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E4A0
	b _0800DA72
	.align 2, 0
_0800D8F4: .4byte 0xFFFF0000
_0800D8F8:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E450
	b _0800DA72
_0800D90A:
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _0800D976
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _0800D976
	ldrh r0, [r6]
	subs r0, r0, r1
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	mov r8, r4
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, r8
	bl sub_0800E6A0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D93C
	b _0800DA78
_0800D93C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #0xe
	mov r2, r8
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D964
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_0800E4A0
	b _0800DA72
_0800D964:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E450
	b _0800DA72
_0800D976:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800DA78
	ldrh r2, [r7, #2]
	movs r3, #2
	ldrsh r0, [r7, r3]
	adds r1, r2, #0
	cmp r0, #0
	bge _0800D9E8
	ldrh r0, [r6]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r2, [r6, #2]
	adds r0, r1, r2
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5B0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA78
	mov r3, r8
	ldrh r0, [r3]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	ands r2, r0
	cmp r1, #7
	bhi _0800DA4C
	cmp r2, #0xf
	bne _0800DA4C
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	b _0800DA72
_0800D9E8:
	cmp r0, #0
	ble _0800DA78
	ldrh r0, [r6]
	add r4, sp, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	bl sub_0800E5FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA78
	mov r1, r8
	ldrh r0, [r1]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	add r0, sp, #4
	ldrh r0, [r0, #2]
	ands r2, r0
	cmp r1, #7
	bhi _0800DA4C
	cmp r2, #0
	bne _0800DA4C
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	b _0800DA72
_0800DA4C:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E500
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800E550
_0800DA72:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA7E
_0800DA78:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
_0800DA7E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
