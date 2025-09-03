	.syntax unified
sub_08042F50:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	ldr r2, _08042FBC
	ldrb r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	ldr r5, _08042FC0
	ldr r0, _08042FC4
	adds r4, r5, r0
	ldrb r0, [r4]
	bl sub_08054FE0
	adds r6, r0, #0
	ldrb r0, [r4]
	bl sub_08054FF0
	mov sl, r0
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0xd3
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ldrb r1, [r6]
	lsls r0, r1
	lsrs r2, r0, #0x10
	cmp r4, #0
	beq _08042FAA
	ldr r1, _08042FC8
	movs r0, #0x6c
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _08042FD0
_08042FAA:
	ldr r1, _08042FCC
	adds r0, r5, r1
	ldrh r2, [r0]
	adds r0, r6, #0
	add r1, sp, #0x10
	adds r3, r4, #0
	bl sub_08054CDC
	b _08042FDA
	.align 2, 0
_08042FBC: .4byte gUnknown_0200F920
_08042FC0: .4byte gSomeBlend
_08042FC4: .4byte 0x000041C2
_08042FC8: .4byte gGoodsInfo
_08042FCC: .4byte 0x000041BC
_08042FD0:
	add r0, sp, #0x10
	mov r1, sl
	movs r2, #0x38
	bl memcpy
_08042FDA:
	ldr r0, _080430A0
	ldr r1, _080430A4
	mov r8, r1
	ldr r1, _080430A8
	add r1, r8
	ldrb r2, [r1]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	movs r2, #5
	rsbs r2, r2, #0
	movs r5, #1
	str r5, [sp]
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
	str r5, [sp, #4]
	movs r1, #0xbc
	movs r2, #7
	bl sub_08047CDC
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sl
	add r2, sp, #0x10
	movs r3, #0
	bl sub_0804389C
	cmp r4, #0
	beq _08043044
	adds r0, r4, #0
	bl sub_080444AC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_08043044:
	ldr r0, _080430AC
	add r0, r8
	ldrh r1, [r7, #4]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	str r5, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0x80
	bl sub_08046D2C
	ldr r0, _080430B0
	add r0, r8
	ldrh r3, [r0]
	cmp r3, #8
	bls _08043076
	movs r3, #8
_08043076:
	ldrh r0, [r0]
	ldrh r2, [r7, #8]
	movs r1, #0xe4
	str r1, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	movs r1, #0x78
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #8
	bl sub_080467C0
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080430A0: .4byte gUnknown_080C6260
_080430A4: .4byte gSomeBlend
_080430A8: .4byte 0x000041C2
_080430AC: .4byte 0x000041E8
_080430B0: .4byte 0x0000426E
	.syntax divided
