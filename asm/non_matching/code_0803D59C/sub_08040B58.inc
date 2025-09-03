	.syntax unified
sub_08040B58:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r0
	ldr r6, _08040C44
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	mov r1, sl
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	str r0, [sp, #0x18]
	mov r2, sl
	ldrh r0, [r2, #0xa]
	bl sub_08054FF0
	ldr r1, _08040C48
	ldr r3, _08040C4C
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08040BEC
	ldr r5, _08040C50
	adds r7, r1, r5
	ldrh r0, [r7]
	cmp r0, #1
	bls _08040BEC
	ldr r4, _08040C54
	ldr r0, _08040C58
	mov sb, r0
	ldr r1, _08040C5C
	adds r6, r6, r1
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
	ldrh r1, [r7]
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
	mov r3, r8
	str r3, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_08040BEC:
	ldr r0, _08040C60
	mov r5, sl
	ldrh r2, [r5, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	movs r4, #1
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	movs r0, #0x43
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #0xbe
	movs r2, #7
	bl sub_08047CDC
	ldr r0, [sp, #0x18]
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040C64
	mov r0, sl
	bl sub_08040FAC
	b _08040F8A
	.align 2, 0
_08040C44: .4byte gUnknown_0200F920
_08040C48: .4byte gSomeBlend
_08040C4C: .4byte 0x000041DA
_08040C50: .4byte 0x00002DFA
_08040C54: .4byte gUnknown_080C6530
_08040C58: .4byte gUnknown_080C696C
_08040C5C: .4byte 0x00006474
_08040C60: .4byte gUnknown_080C6260
_08040C64:
	ldr r6, _08040CC0
	mov r1, sl
	ldrh r0, [r1, #4]
	lsls r0, r0, #2
	ldrh r1, [r1, #0xa]
	lsls r1, r1, #7
	adds r0, r0, r1
	adds r0, r0, r6
	movs r2, #0xd4
	lsls r2, r2, #6
	adds r0, r0, r2
	ldrb r5, [r0]
	cmp r5, #0
	beq _08040CFE
	ldr r3, _08040CC4
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08040CD8
	ldr r0, _08040CC8
	adds r4, r6, r0
	ldrh r0, [r4]
	bl sub_08054FE0
	adds r7, r0, #0
	ldrh r0, [r4]
	bl sub_08054FF0
	adds r1, r0, #0
	ldr r2, _08040CCC
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _08040CFE
	ldr r0, _08040CD0
	ldr r3, _08040CD4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08040CE6
	adds r0, r7, #0
	bl sub_080453D4
	b _08040CFE
	.align 2, 0
_08040CC0: .4byte gSomeBlend
_08040CC4: .4byte 0x000041DA
_08040CC8: .4byte 0x000041D0
_08040CCC: .4byte 0x000041C8
_08040CD0: .4byte gUnknown_0200F920
_08040CD4: .4byte 0x00006478
_08040CD8:
	ldr r0, _08040CF0
	ldr r1, _08040CF4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08040CF8
_08040CE6:
	adds r0, r5, #0
	bl sub_080454F0
	b _08040CFE
	.align 2, 0
_08040CF0: .4byte gUnknown_0200F920
_08040CF4: .4byte 0x00006478
_08040CF8:
	adds r0, r5, #0
	bl sub_08044560
_08040CFE:
	ldr r4, _08040D84
	mov r2, sl
	ldrh r3, [r2, #0xa]
	lsls r0, r3, #1
	ldr r5, _08040D88
	adds r1, r4, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #0x10
	ble _08040D18
	movs r0, #0x10
_08040D18:
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	str r0, [sp, #0x1c]
	lsls r3, r3, #7
	lsls r0, r1, #2
	movs r5, #0xd4
	lsls r5, r5, #6
	adds r1, r4, r5
	adds r0, r0, r1
	adds r5, r3, r0
	movs r7, #0
	lsrs r2, r2, #0x11
	cmp r7, r2
	blo _08040D36
	b _08040E50
_08040D36:
	ldr r0, _08040D8C
	mov sb, r0
	movs r1, #1
	mov r8, r1
	movs r6, #2
_08040D40:
	ldr r0, [r5]
	lsls r0, r0, #0xa
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08040D90
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #0xc]
	lsls r4, r7, #1
	adds r2, r4, r7
	lsls r2, r2, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r2, r2, r3
	asrs r2, r2, #0x10
	mov r1, r8
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #0x68
	movs r3, #2
	bl sub_08046BA8
	b _08040DC6
	.align 2, 0
_08040D84: .4byte gSomeBlend
_08040D88: .4byte 0x00004270
_08040D8C: .4byte gPsiData
_08040D90:
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #0xc]
	lsls r4, r7, #1
	adds r2, r4, r7
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	mov r1, r8
	str r1, [sp]
	movs r1, #0x99
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #5
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #0x68
	movs r3, #2
	bl sub_08046BA8
_08040DC6:
	adds r5, #4
	ldr r0, [r5]
	lsls r0, r0, #0xa
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08040E0A
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #0xc]
	adds r2, r4, r7
	lsls r2, r2, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r2, r2, r3
	asrs r2, r2, #0x10
	mov r1, r8
	str r1, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #0xda
	movs r3, #2
	bl sub_08046BA8
	b _08040E3E
_08040E0A:
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #0xc]
	adds r2, r4, r7
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	mov r1, r8
	str r1, [sp]
	movs r1, #0x99
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #5
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #0xda
	movs r3, #2
	bl sub_08046BA8
_08040E3E:
	adds r5, #4
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [sp, #0x1c]
	lsrs r0, r2, #1
	cmp r7, r0
	bhs _08040E50
	b _08040D40
_08040E50:
	movs r3, #1
	ldr r0, [sp, #0x1c]
	ands r0, r3
	cmp r0, #0
	beq _08040EDC
	ldr r0, [r5]
	lsls r0, r0, #0xa
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08040EA4
	ldr r2, _08040EA0
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r2, r2, #0x12
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r2, r2, r5
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	movs r1, #0x68
	movs r3, #2
	bl sub_08046BA8
	b _08040EDC
	.align 2, 0
_08040EA0: .4byte gPsiData
_08040EA4:
	ldr r2, _08040F0C
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r1, #0x99
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #5
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	movs r1, #0x68
	movs r3, #2
	bl sub_08046BA8
_08040EDC:
	ldr r2, _08040F10
	mov r3, sl
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #1
	ldr r5, _08040F14
	adds r1, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08040F18
	movs r0, #0x57
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x52
	movs r2, #0x8e
	bl sub_08047CDC
	b _08040F54
	.align 2, 0
_08040F0C: .4byte gPsiData
_08040F10: .4byte gSomeBlend
_08040F14: .4byte 0x00004270
_08040F18:
	ldr r0, _08040F9C
	adds r5, r2, r0
	mov r2, sl
	ldrh r1, [r2, #4]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	beq _08040F2E
	movs r2, #0x6a
_08040F2E:
	lsrs r1, r1, #1
	mov r3, sl
	ldrh r0, [r3, #8]
	lsrs r0, r0, #1
	subs r1, r1, r0
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r0, #0xb0
	lsls r0, r0, #0xd
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08046D2C
_08040F54:
	ldr r4, _08040FA0
	mov r1, sl
	ldrh r0, [r1, #0xa]
	lsls r0, r0, #1
	ldr r2, _08040FA4
	adds r1, r4, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r3, sl
	ldrh r2, [r3, #8]
	movs r3, #0x78
	str r3, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r1, #0x10
	ldr r3, [sp, #0x1c]
	bl sub_080467C0
	ldrh r0, [r4, #0x14]
	movs r1, #0
	ldr r0, _08040FA8
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x1c]
	strh r1, [r4, #0x1c]
_08040F8A:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040F9C: .4byte 0x000041E8
_08040FA0: .4byte gSomeBlend
_08040FA4: .4byte 0x00004270
_08040FA8: .4byte 0x0000FFFE
	.syntax divided
