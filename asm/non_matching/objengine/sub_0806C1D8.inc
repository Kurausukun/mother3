	.syntax unified
sub_0806C1D8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	movs r2, #0x83
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0xc]
_0806C1F8:
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	mov r5, r8
	lsls r5, r5, #7
	mov sl, r5
	mov r7, r8
	adds r7, #1
	str r7, [sp, #0x14]
	ldr r1, _0806C3A8
	adds r1, r6, r1
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0806C278
	movs r2, #0
	mov ip, r2
	mov r0, sl
	add r0, r8
	lsls r3, r0, #2
	adds r0, r3, r6
	ldr r0, [r0, #0x20]
	cmp ip, r0
	bge _0806C278
	adds r1, r3, r6
	movs r5, #0x83
	lsls r5, r5, #4
	adds r5, r5, r6
	mov sb, r5
	adds r0, r1, #0
	adds r3, r0, #0
	adds r3, #0x20
	str r3, [sp, #0x18]
	adds r4, r0, #0
	adds r4, #0x24
	adds r3, r1, #0
	adds r3, #0x26
	ldr r7, _0806C3AC
	adds r7, r6, r7
	str r7, [sp, #0x1c]
_0806C244:
	ldrh r2, [r3]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r1, r0
	ldr r0, _0806C3B0
	ands r1, r0
	ldr r0, _0806C3B4
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	ldrb r2, [r4]
	adds r0, r0, r2
	strb r0, [r4]
	adds r4, #8
	adds r3, #8
	movs r5, #1
	add ip, r5
	ldr r7, [sp, #0x18]
	ldr r0, [r7]
	cmp ip, r0
	blt _0806C244
_0806C278:
	mov r0, sl
	add r0, r8
	lsls r2, r0, #2
	adds r0, r2, r6
	adds r1, r0, #0
	adds r1, #0x24
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	cmp r0, #0
	ble _0806C2A0
	ldr r3, _0806C3B8
	str r1, [r3]
	ldr r5, [sp, #8]
	str r5, [r3, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C2A0:
	adds r0, r2, r6
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	ldr r7, [sp, #8]
	adds r7, r7, r0
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r8, r0
	cmp r0, #3
	ble _0806C1F8
	ldr r0, _0806C3BC
	subs r1, r0, r7
	cmp r1, #0
	ble _0806C2D6
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r2, _0806C3B8
	add r0, sp, #4
	str r0, [r2]
	str r7, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C2D6:
	movs r3, #0
	adds r0, r6, #0
	adds r0, #0x20
	movs r2, #0x81
	lsls r2, r2, #2
	movs r1, #3
_0806C2E2:
	str r3, [r0]
	adds r0, r0, r2
	subs r1, #1
	cmp r1, #0
	bge _0806C2E2
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ldr r1, _0806C3C0
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _0806C31A
	ldr r3, _0806C3C4
	adds r1, r6, r3
	adds r3, r0, #0
_0806C300:
	ldrh r0, [r1]
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0xe]
	ldrh r0, [r1, #4]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0x1e]
	adds r2, #0x20
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bne _0806C300
_0806C31A:
	ldr r5, _0806C3C0
	adds r0, r6, r5
	movs r1, #0
	str r1, [r0]
	ldr r7, _0806C3C8
	movs r4, #0
	ldr r0, _0806C3CC
	adds r1, r6, r0
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0806C364
	adds r5, r1, #0
	ldr r3, _0806C3B8
	ldr r2, [r5, #8]
	movs r1, #0x84
	lsls r1, r1, #0x18
	mov r8, r1
_0806C33C:
	ldrh r0, [r2]
	ldr r1, [r2, #4]
	lsls r0, r0, #5
	cmp r0, #0
	ble _0806C354
	str r1, [r3]
	str r7, [r3, #4]
	asrs r0, r0, #2
	mov r1, r8
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C354:
	ldrh r0, [r2]
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r2, #8
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0806C33C
_0806C364:
	ldr r2, _0806C3CC
	adds r0, r6, r2
	movs r4, #0
	str r4, [r0, #4]
	ldr r3, _0806C3D0
	adds r0, r6, r3
	strh r4, [r0]
	ldr r5, _0806C3D4
	adds r3, r6, r5
	ldr r0, [r3]
	lsls r1, r0, #5
	cmp r1, #0
	ble _0806C394
	ldr r2, _0806C3B8
	ldr r7, [sp, #0x10]
	str r7, [r2]
	ldr r0, _0806C3D8
	str r0, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C394:
	str r4, [r3]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C3A8: .4byte 0x0000094C
_0806C3AC: .4byte 0x00000832
_0806C3B0: .4byte 0x000001FF
_0806C3B4: .4byte 0xFFFFFE00
_0806C3B8: .4byte 0x040000D4
_0806C3BC: .4byte 0x07000400
_0806C3C0: .4byte 0x00000834
_0806C3C4: .4byte 0x00000838
_0806C3C8: .4byte 0x06010000
_0806C3CC: .4byte 0x00000938
_0806C3D0: .4byte 0x00000944
_0806C3D4: .4byte 0x00000948
_0806C3D8: .4byte 0x05000200
	.syntax divided
