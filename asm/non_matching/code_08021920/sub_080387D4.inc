	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0x14]
	ldr r6, _08038900
	ldr r5, _08038904
	ldr r0, _08038908
	ldr r1, _0803890C
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	lsrs r0, r0, #3
	movs r4, #7
	ands r0, r4
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x24
	movs r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #0x18
	mov r2, sl
	ldr r1, [r2]
	lsrs r1, r1, #3
	ands r1, r4
	adds r1, r1, r5
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0xbc
	subs r1, r1, r2
	str r7, [sp]
	str r7, [sp, #4]
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0803D678
	ldr r4, _08038910
	mov sb, r4
	ldr r4, _08038914
	add r4, sb
	movs r5, #0
	ldrsh r0, [r4, r5]
	adds r1, r6, #0
	subs r1, #0x60
	cmp r0, #0
	bne _08038846
	adds r1, #0x30
_08038846:
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r1, #0
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0x20
	bl sub_0803D678
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	subs r1, #0x48
	cmp r0, #1
	bne _08038864
	adds r1, #0x30
_08038864:
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r1, #0
	movs r1, #0xb5
	movs r2, #0x40
	movs r3, #0x20
	bl sub_0803D678
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r6, #0
	subs r3, #0xc0
	cmp r0, #2
	bne _08038882
	adds r3, #0x30
_08038882:
	ldr r5, [sp, #0x14]
	ldrh r1, [r5, #4]
	lsls r1, r1, #3
	movs r0, #0xa6
	mov r8, r0
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08038918
	mov r5, sl
	ldr r0, [r5]
	lsrs r0, r0, #3
	movs r5, #3
	ands r0, r5
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x3a
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0803D6C8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r3, r6, #0
	subs r3, #0xa8
	cmp r0, #3
	bne _080388C2
	adds r3, #0x30
_080388C2:
	ldr r2, [sp, #0x14]
	ldrh r1, [r2, #4]
	lsls r1, r1, #3
	mov r4, r8
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803891C
	mov r4, sl
	ldr r0, [r4]
	lsrs r0, r0, #3
	ands r0, r5
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x4d
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0803D6C8
	ldr r0, _08038920
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038924
	cmp r0, #1
	beq _08038974
	b _080389B8
	.align 2, 0
_08038900: .4byte gUnknown_080C1FB8
_08038904: .4byte gUnknown_080C2030
_08038908: .4byte gGame
_0803890C: .4byte 0x00009D10
_08038910: .4byte gSomeBlend
_08038914: .4byte 0x00003524
_08038918: .4byte gUnknown_080C2040
_0803891C: .4byte gUnknown_080C2048
_08038920: .4byte 0x000035BA
_08038924:
	ldr r6, _0803896C
	ldr r5, _08038970
	add r5, sb
	mov r8, r5
	ldr r0, [r6, #0xc]
	ldr r1, [r5]
	adds r0, r0, r1
	movs r5, #0x98
	lsls r5, r5, #2
	str r5, [sp]
	movs r4, #0xe
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x33
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, [r6, #8]
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	str r5, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x53
	movs r3, #6
	bl sub_0803DAAC
	b _080389B8
	.align 2, 0
_0803896C: .4byte gSave
_08038970: .4byte 0x0000351C
_08038974:
	ldr r6, _08038A28
	ldr r4, _08038A2C
	add r4, sb
	mov r8, r4
	ldr r0, [r6, #0xc]
	ldr r1, [r4]
	subs r0, r0, r1
	movs r5, #0x98
	lsls r5, r5, #2
	str r5, [sp]
	movs r4, #0xe
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x33
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, [r6, #8]
	mov r2, r8
	ldr r1, [r2]
	adds r0, r0, r1
	str r5, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x53
	movs r3, #6
	bl sub_0803DAAC
_080389B8:
	ldr r4, _08038A30
	ldr r5, _08038A2C
	adds r0, r4, r5
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r1, #0xe
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x43
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, _08038A34
	adds r2, r4, r0
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08038A0A
	ldr r0, _08038A38
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08038A0A
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038A0A
	ldr r1, _08038A3C
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r2]
_08038A0A:
	ldr r0, _08038A30
	ldrh r1, [r0, #0x12]
	movs r1, #0
	strh r1, [r0, #0x12]
	ldrh r2, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038A28: .4byte gSave
_08038A2C: .4byte 0x0000351C
_08038A30: .4byte gSomeBlend
_08038A34: .4byte 0x00003524
_08038A38: .4byte 0x00003526
_08038A3C: .4byte 0x0000FFFF
	.syntax divided
