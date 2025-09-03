	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r4, r6, r0
	mov r1, sp
	ldr r2, _0803EA10
	adds r0, r6, r2
	ldrb r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E954
	mov r5, sp
_0803E928:
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r2, #0x60
	bl sub_08001A14
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	adds r4, #0xcc
	ldrh r0, [r5]
	cmp r0, #0
	bne _0803E928
_0803E954:
	ldr r1, _0803EA14
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	ldr r2, _0803EA18
	adds r1, r6, r2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	ldr r3, _0803EA1C
	adds r0, r6, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E98C
	ldr r1, _0803EA20
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E98C
	ldr r0, _0803EA24
	ldr r1, _0803EA28
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_0803EC28
_0803E98C:
	ldr r2, _0803EA14
	adds r3, r6, r2
	ldrb r2, [r3]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1d
	adds r0, #1
	movs r1, #7
	ands r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #4
	bne _0803EA3A
	ldr r3, _0803EA1C
	adds r0, r6, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803E9D2
	ldr r1, _0803EA20
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803E9D2
	ldr r0, _0803EA24
	ldr r1, _0803EA28
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_0803EC28
_0803E9D2:
	ldr r2, _0803EA2C
	adds r4, r6, r2
	ldr r0, [r4]
	ldrb r1, [r0, #0x11]
	ldr r3, _0803EA20
	adds r0, r6, r3
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	adds r3, #1
	adds r0, r6, r3
	strb r1, [r0]
	ldr r0, [r4]
	strb r2, [r0, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080499D0
	movs r0, #0xd8
	lsls r0, r0, #7
	adds r1, r6, r0
	ldr r0, [r4]
	cmp r0, r1
	bne _0803EA34
	ldr r1, _0803EA30
	adds r0, r6, r1
	b _0803EA36
	.align 2, 0
_0803EA10: .4byte 0x000076D7
_0803EA14: .4byte 0x000076DC
_0803EA18: .4byte 0x000076D2
_0803EA1C: .4byte 0x000076DD
_0803EA20: .4byte 0x000076DA
_0803EA24: .4byte gUnknown_02016878
_0803EA28: .4byte 0x0600E800
_0803EA2C: .4byte 0x00006C28
_0803EA30: .4byte 0x00006C14
_0803EA34:
	adds r0, r1, #0
_0803EA36:
	str r0, [r4]
	b _0803EA42
_0803EA3A:
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r3]
_0803EA42:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
