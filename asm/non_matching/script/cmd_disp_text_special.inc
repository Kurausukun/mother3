	.syntax unified
cmd_disp_text_special:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08027F38
	adds r6, r0, #0
	movs r0, #1
	bl sub_0800ADBC
	ldr r0, _080207E8
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r4, _080207EC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	ldr r0, _080207F0
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	cmp r5, #1
	beq _08020814
	cmp r5, #1
	bgt _080207F4
	cmp r5, #0
	beq _080207FA
	b _08020846
	.align 2, 0
_080207E8: .4byte 0x06008000
_080207EC: .4byte gUnknown_02016078
_080207F0: .4byte gUnknown_080C1B60
_080207F4:
	cmp r5, #2
	beq _08020830
	b _08020846
_080207FA:
	ldr r0, _08020810
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
	strh r5, [r1, #2]
	adds r0, r6, #0
	bl sub_08024B9C
	bl sub_0800494C
	b _08020846
	.align 2, 0
_08020810: .4byte 0x00005348
_08020814:
	ldr r1, _0802082C
	adds r0, r4, r1
	movs r1, #3
	strh r1, [r0]
	movs r1, #7
	strh r1, [r0, #2]
	adds r0, r6, #0
	bl sub_08024CC8
	bl sub_08004BB8
	b _08020846
	.align 2, 0
_0802082C: .4byte 0x00005348
_08020830:
	ldr r1, _08020850
	adds r0, r4, r1
	movs r1, #3
	strh r1, [r0]
	strh r5, [r0, #2]
	subs r1, #4
	adds r0, r6, #0
	bl sub_08024DCC
	bl sub_08004CB8
_08020846:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020850: .4byte 0x00005348
	.syntax divided
