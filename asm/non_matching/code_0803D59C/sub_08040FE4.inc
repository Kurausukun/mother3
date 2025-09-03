	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r6, _080410CC
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
	ldr r1, _080410D0
	ldr r2, _080410D4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041076
	ldr r1, _080410D8
	ldrh r0, [r1]
	cmp r0, #1
	bls _08041076
	ldr r4, _080410DC
	ldr r2, _080410E0
	mov sb, r2
	ldr r0, _080410E4
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
	ldr r0, _080410D8
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
_08041076:
	ldr r0, _080410E8
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
	movs r0, #0x44
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #0xb2
	movs r2, #7
	bl sub_08047CDC
	mov r0, sl
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080410EC
	adds r0, r7, #0
	bl sub_08041118
	b _08041108
	.align 2, 0
_080410CC: .4byte gUnknown_0200F920
_080410D0: .4byte gSomeBlend
_080410D4: .4byte 0x000041DA
_080410D8: .4byte gUnknown_02018E22
_080410DC: .4byte gUnknown_080C6530
_080410E0: .4byte gUnknown_080C696C
_080410E4: .4byte 0x00006474
_080410E8: .4byte gUnknown_080C6260
_080410EC:
	mov r0, sl
	ldr r1, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl sub_08043EB4
	mov r0, sl
	movs r1, #0x48
	movs r2, #0x1a
	movs r3, #1
	bl sub_080442D8
	bl sub_08044598
_08041108:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
