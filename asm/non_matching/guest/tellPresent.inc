	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r5, r0, #0
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r0, sp, #0x1c
	mov r8, r0
	bl __3Msg
	add r7, sp, #0x28
	adds r0, r7, #0
	bl __3Msg
	str r7, [sp]
	add r0, sp, #4
	movs r1, #0x88
	adds r2, r6, #0
	mov r3, r8
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x40
	movs r0, #0
	mov sl, r0
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	bl __3Msg
	ldrh r1, [r5, #0x24]
	mov r0, r8
	bl getName__5GoodsUs
	adds r0, r7, #0
	bl __3Msg
	add r1, sp, #0x34
	mov sb, r1
	mov r0, sb
	bl __3Msg
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x89
	mov r2, r8
	adds r3, r7, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r0, sp, #4
	adds r1, r6, #0
	bl replace__3MsgRC3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl druggedPresentCheck
	add r0, sp, #4
	adds r1, r6, #0
	bl replace__3MsgRC3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x44
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	bl reqInventorySlot
	adds r4, r0, #0
	cmp r4, #0
	beq _080611D2
	ldr r2, [r4, #0x1c]
	movs r1, #0xce
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r5, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, r8
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldrh r1, [r5, #0x24]
	adds r0, r7, #0
	bl getName__5GoodsUs
	mov r0, sb
	bl __3Msg
	mov r1, sb
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x8b
	mov r2, r8
	adds r3, r7, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x48
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	b _08061230
_080611D2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl tellPlayerInventoryFull
	add r1, sp, #0x4c
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_0807362C
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	cmp r4, #0
	bne _08061204
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061204:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061210:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0806121C
	cmp r0, #1
	beq _08061224
	b _0806122A
_0806121C:
	adds r0, r5, #0
	bl throwAwayItem
	b _0806122A
_08061224:
	adds r0, r5, #0
	bl checkGiveUpItem
_0806122A:
	ldr r0, [r5, #0x28]
	cmp r0, #2
	bne _08061210
_08061230:
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
