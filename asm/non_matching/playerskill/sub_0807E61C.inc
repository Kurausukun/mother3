	.syntax unified
sub_0807E61C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r6, r0, #0
	ldr r0, [r6, #0x40]
	cmp r0, #5
	bne _0807E632
	b _0807E974
_0807E632:
	movs r0, #0
	str r0, [sp, #0x74]
	adds r1, r6, #0
	adds r1, #0x34
	str r1, [sp, #0x84]
	add r2, sp, #0x50
	mov r8, r2
	adds r3, r6, #0
	adds r3, #0x36
	str r3, [sp, #0x8c]
	adds r0, r6, #0
	adds r0, #0x35
	str r0, [sp, #0x88]
	mov r1, sp
	adds r1, #0x70
	str r1, [sp, #0x90]
	add r7, sp, #0x5c
	mov r2, sp
	adds r2, #0x68
	str r2, [sp, #0x80]
	add r3, sp, #0x6c
	mov sl, r3
_0807E65E:
	movs r0, #0
	mov sb, r0
	ldr r1, [sp, #0x74]
	adds r1, #1
	str r1, [sp, #0x94]
	ldr r3, [sp, #0x74]
	movs r0, #0xb8
	adds r2, r3, #0
	muls r2, r0, r2
	str r2, [sp, #0x78]
	adds r0, r2, #0
	adds r0, #0xb4
	adds r0, r6, r0
	str r0, [sp, #0x7c]
_0807E67A:
	ldr r2, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r6, #0
	ldr r2, [sp, #0x74]
	mov r3, sb
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0807E694
	b _0807E794
_0807E694:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	mov r0, r8
	bl __3Msg
	ldr r0, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r6, #0
	ldr r2, [sp, #0x74]
	mov r3, sb
	bl sub_0807EAB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E6F4
	mov r0, r8
	ldr r1, _0807E6F0
	bl sub_0806E34C
	adds r0, r7, #0
	mov r1, sp
	bl name__C5Goods
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	b _0807E714
	.align 2, 0
_0807E6F0: .4byte 0x0000FF22
_0807E6F4:
	mov r0, r8
	movs r1, #0
	bl sub_0806E34C
	adds r0, r7, #0
	mov r1, sp
	bl name__C5Goods
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
_0807E714:
	movs r0, #0x5c
	mov r2, sb
	muls r2, r0, r2
	ldr r1, [sp, #0x78]
	adds r0, r1, r6
	adds r0, r2, r0
	adds r4, r0, #0
	adds r4, #0xb4
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	ldr r3, [sp, #0x7c]
	adds r5, r3, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	mov r1, r8
	bl _call_via_r2
	mov r0, sp
	bl goods_2c0__5Goods
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807E766
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r5, r0
	movs r1, #0
	ldr r3, [sp, #0x80]
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	ldr r2, [r2, #4]
	ldr r1, [sp, #0x80]
	bl _call_via_r2
	b _0807E782
_0807E766:
	ldr r2, [r4, #0x1c]
	adds r2, #0x90
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	movs r1, #0xa0
	mov r3, sl
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	ldr r2, [r2, #4]
	mov r1, sl
	bl _call_via_r2
_0807E782:
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	b _0807E7C8
_0807E794:
	movs r0, #0x5c
	mov r4, sb
	muls r4, r0, r4
	ldr r1, [sp, #0x78]
	adds r0, r1, r6
	adds r0, r4, r0
	adds r0, #0xb4
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	ldr r2, [sp, #0x7c]
	adds r4, r2, r4
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r4, r4, r0
	mov r0, sp
	bl __3Msg
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0807E7C8:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bgt _0807E7D4
	b _0807E67A
_0807E7D4:
	ldr r2, [sp, #0x94]
	str r2, [sp, #0x74]
	cmp r2, #2
	bgt _0807E7DE
	b _0807E65E
_0807E7DE:
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r1, [sp, #0x8c]
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldr r3, [sp, #0x88]
	movs r4, #0
	ldrsb r4, [r3, r4]
	movs r1, #0x6c
	adds r3, r2, #0
	muls r3, r1, r3
	adds r3, #3
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, #3
	add r2, sp, #0x70
	strh r3, [r2]
	ldr r2, [sp, #0x90]
	strh r1, [r2, #2]
	ldr r1, [sp, #0x90]
	bl sub_0808B1A8
	movs r3, #0xde
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r0, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #1
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r1, _0807E984
	adds r4, r6, r1
	ldr r2, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, #3
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807E994
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	movs r3, #0x96
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC
	ldr r3, [sp, #0x84]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x88]
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [sp, #0x8c]
	movs r3, #0
	ldrsb r3, [r0, r3]
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
	ldr r3, _0807E988
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080867D4
	mov r0, sp
	bl id__C5Goods
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080867F8
	ldr r3, _0807E98C
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	mov r1, sp
	movs r2, #0
	bl action_fixme__6Actioni
	adds r0, r4, #0
	mov r1, r8
	bl sub_08071150
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	mov r1, sp
	movs r2, #1
	bl action_fixme__6Actioni
	adds r0, r4, #0
	mov r1, r8
	bl sub_08071150
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r3, _0807E990
	adds r4, r6, r3
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	mov r0, sp
	movs r1, #2
	bl _._5Goods
_0807E974:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E984: .4byte 0x00000414
_0807E988: .4byte 0x0000051C
_0807E98C: .4byte 0x0000054C
_0807E990: .4byte 0x00000604
	.syntax divided
