	.syntax unified
sub_080B3E00:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xbc
	str r0, [sp, #0xb4]
	adds r4, r1, #0
	bl onAttack__6ActionP4Unit
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x3b
	ble _080B3E22
	b _080B4028
_080B3E22:
	adds r0, r4, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r7, r0, #0
	cmp r7, #0
	bne _080B3E30
	b _080B4028
_080B3E30:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r6, #0
	b _080B3EFE
_080B3E3C:
	add r4, sp, #0xc
	ldr r1, [r7, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	adds r0, r4, #0
	bl type__C5Goods
	mov sl, r4
	cmp r0, #4
	beq _080B3E7E
	mov r0, sl
	bl type__C5Goods
	adds r3, r6, #1
	mov r8, r3
	cmp r0, #6
	bne _080B3EF4
_080B3E7E:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	add r1, sp, #0xac
	strh r0, [r1]
	mov r5, sp
	mov sb, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov r8, r6
	cmp r0, r4
	bge _080B3EE2
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B3EB0
	adds r1, r0, #0
_080B3EB0:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B3ED4
	adds r1, r0, #0
_080B3EC6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080B3EC6
_080B3ED4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B3EDE
	bl __builtin_vec_delete
_080B3EDE:
	str r4, [r5]
	str r6, [r5, #8]
_080B3EE2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sb
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080B3EF4:
	mov r0, sl
	movs r1, #2
	bl _._5Goods
	mov r6, r8
_080B3EFE:
	ldr r1, [r7, #0x1c]
	movs r4, #0x83
	lsls r4, r4, #3
	adds r1, r1, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080B3E3C
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _080B3F1E
	b _080B401E
_080B3F1E:
	mov r6, sp
	add r1, sp, #0xc
	mov sl, r1
	add r2, sp, #0x18
	mov r8, r2
	add r3, sp, #0x5c
	mov sb, r3
	mov r4, sp
	adds r4, #0xb0
	str r4, [sp, #0xb8]
	cmp r0, #0
	ble _080B3F66
	adds r5, r0, #0
_080B3F38:
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl randS32_
	adds r4, r0, #0
	ldr r1, [r6, #4]
	subs r1, #1
	movs r0, #0
	bl randS32_
	ldr r1, [r6, #8]
	lsls r4, r4, #1
	adds r4, r4, r1
	ldrh r2, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	subs r5, #1
	cmp r5, #0
	bne _080B3F38
_080B3F66:
	mov r0, sl
	bl __3Msg
	ldr r5, [sp, #0xb4]
	ldr r3, [r5, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B4038
	mov r0, r8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sl
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	mov r0, sb
	adds r2, r7, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, r8
	mov r1, sb
	bl name__C5Goods
	mov r0, sl
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._5Goods
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B403C
	mov r0, r8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sl
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r2, [r7, #0x1c]
	movs r3, #0x81
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r0, r7, r0
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0
	add r1, sp, #0xb0
	strb r0, [r1]
	ldr r5, [sp, #0xb8]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, sl
	ldr r1, [sp, #0xb8]
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sl
	movs r1, #2
	bl _._3Msg
_080B401E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B4028
	bl __builtin_vec_delete
_080B4028:
	add sp, #0xbc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4038: .4byte 0x0000044F
_080B403C: .4byte 0x00000373
	.syntax divided
