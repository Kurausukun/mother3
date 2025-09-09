	.syntax unified
sub_080B19B4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc0
	str r0, [sp, #0xb8]
	adds r4, r1, #0
	bl onSuccess__6ActionP4Unit
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl tryCastPlayer__5GoodsP4Unit
	mov r8, r0
	movs r6, #0
	add r0, sp, #0xc
	mov sb, r0
	b _080B1A9E
_080B19E0:
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r4, #0x84
	lsls r4, r4, #3
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, r8
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, sb
	bl type__C5Goods
	cmp r0, #4
	beq _080B1A1E
	mov r0, sb
	bl type__C5Goods
	adds r7, r6, #1
	cmp r0, #6
	bne _080B1A94
_080B1A1E:
	mov r5, r8
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	add r1, sp, #0xac
	strh r0, [r1]
	mov r5, sp
	mov sl, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r7, r6, #1
	cmp r0, r4
	bge _080B1A82
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080B1A50
	adds r1, r0, #0
_080B1A50:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080B1A74
	adds r1, r0, #0
_080B1A66:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080B1A66
_080B1A74:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080B1A7E
	bl __builtin_vec_delete
_080B1A7E:
	str r4, [r5]
	str r6, [r5, #8]
_080B1A82:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080B1A94:
	mov r0, sb
	movs r1, #2
	bl _._5Goods
	adds r6, r7, #0
_080B1A9E:
	mov r4, r8
	ldr r1, [r4, #0x1c]
	movs r5, #0x83
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080B19E0
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _080B1AC0
	b _080B1BC8
_080B1AC0:
	mov r6, sp
	add r7, sp, #0x18
	add r3, sp, #0x5c
	mov sl, r3
	mov r4, sp
	adds r4, #0xb0
	str r4, [sp, #0xbc]
	cmp r0, #0
	ble _080B1B02
	adds r5, r0, #0
_080B1AD4:
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
	bne _080B1AD4
_080B1B02:
	mov r0, sb
	bl __3Msg
	ldr r5, [sp, #0xb8]
	ldr r3, [r5, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B1BC0
	adds r0, r7, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	mov r0, sl
	mov r2, r8
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	adds r0, r7, #0
	mov r1, sl
	bl name__C5Goods
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	bl _._5Goods
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B1BC4
	adds r0, r7, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r3, r8
	ldr r2, [r3, #0x1c]
	movs r4, #0x81
	lsls r4, r4, #3
	adds r2, r2, r4
	movs r5, #0
	ldrsh r0, [r2, r5]
	add r0, r8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0
	add r1, sp, #0xb0
	strb r0, [r1]
	ldr r1, [sp, #0xbc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sb
	ldr r1, [sp, #0xbc]
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	b _080B1C00
	.align 2, 0
_080B1BC0: .4byte 0x00000372
_080B1BC4: .4byte 0x00000373
_080B1BC8:
	ldr r2, [sp, #0xb8]
	ldr r3, [r2, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r5, #0
	ldrsh r1, [r3, r5]
	movs r2, #0xdd
	lsls r2, r2, #2
	mov r0, sb
	ldr r3, [r3, #4]
	ldr r4, [sp, #0xb8]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xb4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sb
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sb
	movs r1, #2
	bl _._3Msg
_080B1C00:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080B1C0A
	bl __builtin_vec_delete
_080B1C0A:
	add sp, #0xc0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
