	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r2, _08040944
	ldrb r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	ldr r1, _08040948
	ldr r2, _0804094C
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08040860
	ldr r0, _08040950
	adds r0, r0, r1
	mov r8, r0
	ldrh r0, [r0]
	adds r5, r0, #0
	subs r2, #0x82
	adds r6, r1, r2
	ldrh r1, [r7, #4]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	beq _08040826
	movs r2, #0x76
_08040826:
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
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08046D2C
	adds r0, r6, #0
	bl sub_080465F8
	mov r1, r8
	ldrh r0, [r1]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08050E94
_08040860:
	ldr r2, _08040948
	mov sl, r2
	ldr r0, _08040954
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080408CA
	ldr r5, _08040958
	ldr r0, _0804095C
	mov sb, r0
	ldr r4, _08040944
	ldr r1, _08040960
	adds r4, r4, r1
	ldr r0, [r4]
	lsrs r0, r0, #3
	movs r6, #7
	ands r0, r6
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r5, #0x14
	ldr r0, _08040964
	add r0, sl
	ldrh r0, [r0]
	adds r0, #1
	movs r1, #0x16
	muls r1, r0, r1
	ldr r0, [r4]
	lsrs r0, r0, #3
	ands r0, r6
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_080408CA:
	ldr r0, _08040968
	ldrh r2, [r7, #0xa]
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
	movs r0, #0x41
	bl sub_080486A0
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #0xf
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0xbc
	movs r2, #7
	adds r3, r6, #0
	bl sub_08047CDC
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	add r0, sl
	movs r1, #0xc2
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040922
	bl sub_080444AC
_08040922:
	ldr r1, _0804094C
	add r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804096C
	movs r0, #0x57
	bl sub_080486A0
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x52
	movs r2, #0x8e
	adds r3, r6, #0
	bl sub_08047CDC
	b _08040992
	.align 2, 0
_08040944: .4byte gUnknown_0200F920
_08040948: .4byte gSomeBlend
_0804094C: .4byte 0x0000426A
_08040950: .4byte 0x00002C98
_08040954: .4byte 0x000041DA
_08040958: .4byte gUnknown_080C6530
_0804095C: .4byte gUnknown_080C696C
_08040960: .4byte 0x00006474
_08040964: .4byte 0x00002DFA
_08040968: .4byte gUnknown_080C6260
_0804096C:
	ldrh r1, [r1]
	ldrh r2, [r7, #8]
	subs r3, r1, r2
	cmp r3, #0x10
	ble _08040978
	movs r3, #0x10
_08040978:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x74
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0x78
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r0, r1, #0
	movs r1, #0x10
	bl sub_080467C0
_08040992:
	ldr r1, _080409B0
	ldrh r0, [r1, #0x14]
	movs r2, #0
	ldr r0, _080409B4
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
_080409B0: .4byte gSomeBlend
_080409B4: .4byte 0x0000FFFC
	.syntax divided
