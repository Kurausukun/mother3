	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0x37
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x30
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x34
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x33
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x35
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x36
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080612EA
_080612AA:
	ldrh r1, [r4, #0x24]
	add r0, sp, #4
	bl getName__5GoodsUs
	add r5, sp, #0x10
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8a
	add r2, sp, #4
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _080612F2
_080612EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl __3MsgRC3Msg
_080612F2:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
