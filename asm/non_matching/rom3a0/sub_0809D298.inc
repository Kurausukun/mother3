	.syntax unified
sub_0809D298:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	adds r5, r0, #0
	ldr r4, _0809D328
	ldr r1, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r5, r0
	blt _0809D2D4
	b _0809D4A4
_0809D2D4:
	ldr r1, [r7, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x5c
	movs r4, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0xc
	mov r8, r1
	b _0809D3E2
	.align 2, 0
_0809D328: .4byte gUnknown_080F52D8
_0809D32C:
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	adds r2, r7, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, r8
	bl type__C5Goods
	adds r6, r0, #0
	mov r0, r8
	movs r1, #2
	bl _._5Goods
	adds r0, r4, #1
	mov sb, r0
	cmp r6, #4
	bne _0809D3E0
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	add r1, sp, #0x60
	strh r0, [r1]
	mov r5, sp
	mov sl, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _0809D3CE
	lsls r0, r4, #1
	movs r1, #4
	cmp r6, r0
	bge _0809D39C
	adds r1, r0, #0
_0809D39C:
	adds r4, r1, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0809D3C0
	adds r1, r0, #0
_0809D3B2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0809D3B2
_0809D3C0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0809D3CA
	bl __builtin_vec_delete
_0809D3CA:
	str r4, [r5]
	str r6, [r5, #8]
_0809D3CE:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_0809D3E0:
	mov r4, sb
_0809D3E2:
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
	blt _0809D32C
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x27
	bgt _0809D40A
	movs r0, #5
	b _0809D48A
_0809D40A:
	cmp r0, #0x4f
	bgt _0809D488
	movs r0, #0
	ldr r1, [sp, #4]
	cmp r1, #0
	bgt _0809D418
	movs r0, #1
_0809D418:
	cmp r0, #0
	bne _0809D488
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r5, r0, #0
	ldr r2, [r7, #0x1c]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r6, r2, r3
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r4, r7, r4
	movs r1, #0x88
	lsls r1, r1, #3
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r7, r0
	lsls r5, r5, #1
	ldr r1, [sp, #8]
	adds r1, r1, r5
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #8]
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r7, #0
	bl sub_08074098
	adds r4, r0, #0
	bl sub_08072A88__Fv
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	bl sub_08072AA4__Fi
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080742EC
	b _0809D494
_0809D488:
	movs r0, #2
_0809D48A:
	adds r1, r7, #0
	bl sub_08073F88
	bl triggerMonsterSkill
_0809D494:
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0809D4A0
	bl __builtin_vec_delete
_0809D4A0:
	adds r0, r4, #0
	b _0809D4A6
_0809D4A4:
	movs r0, #0
_0809D4A6:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
