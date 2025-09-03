	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	mov sb, r0
	bl sub_08061678
	adds r7, r0, #0
	cmp r7, #0
	bne _0806141E
	mov r0, sb
	movs r1, #1
	b _08061656
_0806141E:
	add r4, sp, #0x84
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_080616C4
	ldrh r0, [r4]
	mov sl, r4
	cmp r0, #0
	beq _080614B8
	mov r0, sl
	ldrh r1, [r0]
	ldrh r3, [r0, #2]
	add r0, sp, #4
	adds r2, r7, #0
	bl __5GoodsUsP4UnitUs
	add r0, sp, #4
	bl isKeyItem__C5Goods
	adds r4, r0, #0
	add r0, sp, #4
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	beq _080614C4
	mov r2, sl
	ldrh r1, [r2]
	add r3, sp, #0x60
	mov r8, r3
	mov r0, r8
	bl getName__5GoodsUs
	add r6, sp, #0x6c
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x78
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x54
	adds r0, r4, #0
	movs r1, #0x92
	mov r2, r8
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x88
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_080614B8:
	mov r0, sb
	movs r1, #0
	movs r2, #1
	bl sub_08061954
	b _08061668
_080614C4:
	mov r0, sl
	ldrh r1, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl getName__5GoodsUs
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8e
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x8c
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r1, r8
	cmp r1, #0
	beq _0806152A
	b _0806165E
_0806152A:
	movs r4, #0
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0x98]
	add r0, sp, #0x58
	mov r8, r0
	add r6, sp, #0x34
	add r5, sp, #0x90
	b _0806159C
_08061542:
	ldr r1, [r7, #0x1c]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	mov r2, sl
	ldrh r1, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0806159A
	ldr r1, [r7, #0x1c]
	movs r3, #0x86
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806159A
	ldr r2, [r7, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0806159A:
	adds r4, #1
_0806159C:
	ldr r1, [r7, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08061542
	ldr r2, [r7, #0x1c]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sb
	ldrh r1, [r3, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x94]
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r0, sp, #0x84
	ldrh r1, [r0]
	ldr r0, [sp, #0x98]
	bl getName__5GoodsUs
	mov r0, sb
	ldrh r1, [r0, #0x24]
	mov r0, r8
	bl getName__5GoodsUs
	mov r1, r8
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x91
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl ROMStrFmt__FiRC3MsgN21
	movs r0, #0
	add r1, sp, #0x90
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #0x98]
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #0x94]
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
_08061656:
	movs r2, #0
	bl sub_08061954
	b _08061668
_0806165E:
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_08061954
_08061668:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
