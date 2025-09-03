	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x50
	adds r6, r0, #0
	movs r0, #0x34
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0x35
	adds r2, r2, r6
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r7, r6, #0
	adds r7, #0x36
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, sp
	bl goods_2c0__5Goods
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	beq _0807E0F6
	movs r0, #0
	b _0807E154
_0807E0F6:
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807E994
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r7, r3]
	adds r0, r6, #0
	bl sub_0807EA24
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08065148
	str r0, [r6, #0x38]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_0807E428
_0807E154:
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
