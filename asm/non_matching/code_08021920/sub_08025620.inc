	.syntax unified
sub_08025620:
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080256AC
	ldr r0, _080256B0
	adds r0, r0, r4
	mov ip, r0
	ldrb r3, [r0]
	lsls r0, r3, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	bne _08025704
	cmp r5, #9
	bhi _08025704
	ldr r7, _080256B4
	adds r1, r4, r7
	ldr r0, _080256B8
	strh r0, [r1]
	ldr r0, _080256BC
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r7, #4
	adds r1, r4, r7
	strh r0, [r1]
	ldr r1, _080256C0
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r7, #4
	adds r0, r4, r7
	strh r1, [r0]
	ldr r1, _080256C4
	adds r0, r4, r1
	strh r2, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r7, ip
	strb r0, [r7]
	ldr r0, _080256C8
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080256CC
	adds r0, r4, r1
	str r6, [r0]
	ldr r7, _080256D0
	adds r1, r4, r7
	movs r0, #1
	str r0, [r1]
	ldr r0, _080256D4
	adds r3, r4, r0
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	ands r0, r2
	strb r0, [r3]
	cmp r5, #4
	beq _080256D8
	cmp r5, #5
	beq _080256E6
	b _080256F0
	.align 2, 0
_080256AC: .4byte gGame
_080256B0: .4byte 0x00008494
_080256B4: .4byte 0x00008450
_080256B8: .4byte 0x0000FFFF
_080256BC: .4byte 0x00008452
_080256C0: .4byte 0x000067AC
_080256C4: .4byte 0x0000845C
_080256C8: .4byte 0x0000845E
_080256CC: .4byte 0x00008484
_080256D0: .4byte 0x00008490
_080256D4: .4byte 0x00008496
_080256D8:
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _0802570C
	adds r1, r4, r7
	movs r0, #0
	strb r0, [r1]
_080256E6:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
_080256F0:
	ldr r0, _08025710
	ldr r1, _08025714
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025704
	movs r0, #0
	bl sub_08025F98
_08025704:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802570C: .4byte 0x00009485
_08025710: .4byte gGame
_08025714: .4byte 0x00008494
	.syntax divided
