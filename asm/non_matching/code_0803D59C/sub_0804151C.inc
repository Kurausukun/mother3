	.syntax unified
sub_0804151C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r2, _080415D0
	ldrb r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x45
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r7, #1
	str r7, [sp, #4]
	movs r1, #0xc0
	movs r2, #7
	bl sub_08047CDC
	bl sub_080469CC
	bl sub_08044614
	ldr r5, _080415D4
	ldrh r1, [r4, #4]
	adds r0, r7, #0
	ands r0, r1
	movs r2, #6
	cmp r0, #0
	beq _08041562
	movs r2, #0x7c
_08041562:
	lsrs r1, r1, #1
	ldrh r0, [r4, #8]
	lsrs r0, r0, #1
	subs r1, r1, r0
	ldr r0, _080415D8
	adds r6, r5, r0
	ldr r3, _080415DC
	adds r0, r5, r3
	ldrb r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, #0x24
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08046D2C
	adds r0, r5, #0
	adds r0, #0x96
	ldrh r0, [r0]
	ldrh r2, [r4, #8]
	subs r0, r0, r2
	cmp r0, #0xe
	ble _0804159E
	movs r0, #0xe
_0804159E:
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r4, #2]
	movs r1, #0xe4
	str r1, [sp]
	movs r1, #0x1c
	str r1, [sp, #4]
	movs r1, #0x95
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0xe
	bl sub_080467C0
	ldrh r0, [r6, #0x14]
	ldr r0, _080415E0
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x1c]
	mov r3, r8
	strh r3, [r6, #0x1c]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080415D0: .4byte gUnknown_0200F920
_080415D4: .4byte gUnknown_0201A210
_080415D8: .4byte 0xFFFFBE18
_080415DC: .4byte 0x000083B9
_080415E0: .4byte 0x0000FFFA
	.syntax divided
