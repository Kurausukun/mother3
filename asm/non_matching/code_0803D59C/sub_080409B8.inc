	.syntax unified
sub_080409B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r6, _08040AA0
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldrh r0, [r7, #0xa]
	bl sub_08054FE0
	mov sl, r0
	ldrh r0, [r7, #0xa]
	bl sub_08054FF0
	str r0, [sp, #8]
	ldr r1, _08040AA4
	ldr r2, _08040AA8
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08040A4A
	ldr r1, _08040AAC
	ldrh r0, [r1]
	cmp r0, #1
	bls _08040A4A
	ldr r4, _08040AB0
	ldr r2, _08040AB4
	mov sb, r2
	ldr r0, _08040AB8
	adds r6, r6, r0
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	ldr r0, _08040AAC
	ldrh r1, [r0]
	movs r0, #0x16
	muls r1, r0, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	ands r0, r5
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_08040A4A:
	ldr r0, _08040ABC
	ldrh r2, [r7, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	movs r6, #1
	str r6, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	movs r0, #0x42
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #0xbc
	movs r2, #7
	bl sub_08047CDC
	mov r0, sl
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08040AC0
	adds r0, r7, #0
	bl sub_08040B20
	b _08040B0A
	.align 2, 0
_08040AA0: .4byte gUnknown_0200F920
_08040AA4: .4byte gSomeBlend
_08040AA8: .4byte 0x000041DA
_08040AAC: .4byte gUnknown_02018E22
_08040AB0: .4byte gUnknown_080C6530
_08040AB4: .4byte gUnknown_080C696C
_08040AB8: .4byte 0x00006474
_08040ABC: .4byte gUnknown_080C6260
_08040AC0:
	str r5, [sp]
	mov r0, sl
	ldr r1, [sp, #8]
	adds r2, r1, #0
	movs r3, #0
	bl sub_0804337C
	mov r0, sl
	adds r0, #0x34
	ldrh r1, [r7, #4]
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08040AEC
	adds r0, r4, #0
	bl sub_080444AC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_08040AEC:
	ldr r0, _08040B1C
	ldrh r1, [r7, #4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x13
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r3, r3, r2
	asrs r3, r3, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #1
	movs r2, #0x80
	bl sub_08046D2C
_08040B0A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040B1C: .4byte gUnknown_0201A210
	.syntax divided
