	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r6, _08042134
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldr r1, _08042138
	ldr r2, _0804213C
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804209A
	ldr r3, _08042140
	adds r3, r3, r1
	mov sl, r3
	ldrh r0, [r3]
	cmp r0, #1
	bls _0804209A
	ldr r4, _08042144
	ldr r0, _08042148
	mov sb, r0
	ldr r1, _0804214C
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
	mov r3, sl
	ldrh r1, [r3]
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
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_0804209A:
	movs r0, #0x87
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0xb4
	movs r2, #7
	bl sub_08047CDC
	ldr r0, _08042150
	ldrh r2, [r7, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	ldr r2, _08042138
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r4, r1, #0
	cmp r1, #0
	beq _0804210C
	ldr r3, _0804213C
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08042102
	adds r0, r1, #0
	bl sub_080444AC
_08042102:
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_0804210C:
	ldr r1, _08042138
	ldr r0, _08042154
	adds r4, r1, r0
	ldrh r0, [r4]
	cmp r0, #0
	bne _08042158
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
	b _080421B8
	.align 2, 0
_08042134: .4byte gUnknown_0200F920
_08042138: .4byte gSomeBlend
_0804213C: .4byte 0x000041DA
_08042140: .4byte 0x00002DFA
_08042144: .4byte gUnknown_080C6530
_08042148: .4byte gUnknown_080C696C
_0804214C: .4byte 0x00006474
_08042150: .4byte gUnknown_080C6260
_08042154: .4byte 0x0000426C
_08042158:
	ldr r2, _080422A4
	adds r6, r1, r2
	ldrh r1, [r7, #4]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804216C
	movs r2, #0x7a
_0804216C:
	lsrs r1, r1, #1
	ldrh r0, [r7, #8]
	lsrs r0, r0, #1
	subs r1, r1, r0
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r0, #0xb0
	lsls r0, r0, #0xd
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08046D2C
	adds r0, r6, #0
	bl sub_080465F8
	ldrh r0, [r4]
	cmp r0, #0x10
	bls _0804219E
	movs r0, #0x10
_0804219E:
	adds r6, r0, #0
	ldrh r0, [r4]
	ldrh r2, [r7, #8]
	movs r3, #0x78
	str r3, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #0x10
	adds r3, r6, #0
	bl sub_080467C0
_080421B8:
	ldr r2, _080422A8
	ldr r1, _080422AC
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x10
	bls _080421C6
	movs r0, #0x10
_080421C6:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r7, #8]
	lsls r1, r1, #2
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r2, r2, r3
	adds r4, r1, r2
	movs r5, #0
	lsrs r0, r0, #0x11
	cmp r5, r0
	bhs _0804224E
_080421DE:
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804220E
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _0804220E
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _080422B0
	movs r1, #8
	movs r3, #0x20
	bl sub_08046A28
_0804220E:
	adds r4, #4
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042240
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _08042240
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _080422B0
	movs r1, #0x80
	movs r3, #0x20
	bl sub_08046A28
_08042240:
	adds r4, #4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r6, #1
	cmp r5, r0
	blo _080421DE
_0804224E:
	movs r7, #1
	ands r6, r7
	cmp r6, #0
	beq _08042284
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042284
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _08042284
	ldr r0, _080422B0
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r2, r2, r3
	asrs r2, r2, #0x10
	str r7, [sp]
	movs r1, #8
	movs r3, #0x20
	bl sub_08046A28
_08042284:
	ldr r1, _080422A8
	ldrh r0, [r1, #0x14]
	movs r2, #0
	movs r0, #4
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r2, [r1, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080422A4: .4byte 0x000041E8
_080422A8: .4byte gSomeBlend
_080422AC: .4byte 0x0000426C
_080422B0: .4byte gUnknown_080C6440
	.syntax divided
