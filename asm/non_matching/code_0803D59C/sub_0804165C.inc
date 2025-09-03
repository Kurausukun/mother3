	.syntax unified
sub_0804165C:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r4, _080416C8
	ldrb r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #6]
	movs r0, #0x46
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r5, #1
	str r5, [sp, #4]
	movs r1, #0x98
	movs r2, #7
	bl sub_08047CDC
	ldr r0, _080416CC
	ldr r1, _080416D0
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #8
	bls _08041694
	movs r0, #8
_08041694:
	adds r7, r0, #0
	bl sub_08044614
	ldr r2, _080416D4
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080416B6
	ldr r1, _080416D8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x5a
	bl sub_08002FD4
	cmp r0, #0x3b
	bgt _080416E0
_080416B6:
	ldr r0, _080416DC
	str r5, [sp]
	movs r1, #2
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	b _080416EE
	.align 2, 0
_080416C8: .4byte gUnknown_0200F920
_080416CC: .4byte gSomeBlend
_080416D0: .4byte 0x0000427C
_080416D4: .4byte 0x00006478
_080416D8: .4byte 0x00006474
_080416DC: .4byte gUnknown_080C679C
_080416E0:
	ldr r0, _080417C4
	str r5, [sp]
	movs r1, #2
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_080416EE:
	ldr r0, _080417C8
	ldr r2, _080417CC
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08041756
	ldr r4, _080417D0
	ldrh r0, [r4]
	bl sub_0805CE5C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041732
	ldr r0, _080417D4
	ldr r3, _080417D8
	ldr r1, _080417DC
	ldr r2, _080417E0
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0xd2
	subs r1, r1, r2
	movs r2, #1
	str r2, [sp]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_08046A28
_08041732:
	ldrh r0, [r4]
	bl sub_08048710
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x7a
	movs r2, #0x62
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	bl sub_08046D0C
_08041756:
	ldr r4, _080417E4
	ldrh r0, [r6, #4]
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #0x11
	movs r0, #0xb0
	lsls r0, r0, #0xd
	adds r3, r3, r0
	asrs r3, r3, #0x10
	movs r5, #1
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	ldr r0, _080417DC
	ldr r1, _080417E8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080417AA
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r0, [r0]
	ldrh r2, [r6, #8]
	movs r1, #0x5a
	str r1, [sp]
	movs r1, #0x1a
	str r1, [sp, #4]
	movs r1, #0x98
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #8
	adds r3, r7, #0
	bl sub_080467C0
_080417AA:
	ldr r2, _080417EC
	adds r1, r4, r2
	ldrh r0, [r1, #0x14]
	ldr r0, _080417F0
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x1c]
	ldr r0, _080417F4
	strh r0, [r1, #0x1c]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080417C4: .4byte gUnknown_080C6788
_080417C8: .4byte gSomeBlend
_080417CC: .4byte 0x000044F2
_080417D0: .4byte gUnknown_02005090
_080417D4: .4byte gUnknown_080C66FC
_080417D8: .4byte gUnknown_080C696C
_080417DC: .4byte gUnknown_0200F920
_080417E0: .4byte 0x00006474
_080417E4: .4byte gUnknown_0201A210
_080417E8: .4byte 0x00006478
_080417EC: .4byte 0xFFFFBE18
_080417F0: .4byte 0x0000FFF8
_080417F4: .4byte 0x0000FFFF
	.syntax divided
