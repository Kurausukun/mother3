	.syntax unified
cmd_80:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08027F38
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	mov r8, r0
	movs r0, #1
	bl sub_0800ADBC
	ldr r0, _080206B4
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r4, _080206B8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	ldr r0, _080206BC
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	cmp r5, #1
	beq _080206E4
	cmp r5, #1
	bgt _080206C0
	cmp r5, #0
	beq _080206C6
	b _08020744
	.align 2, 0
_080206B4: .4byte 0x06008000
_080206B8: .4byte gUnknown_02016078
_080206BC: .4byte gUnknown_080C1B60
_080206C0:
	cmp r5, #2
	beq _08020724
	b _08020744
_080206C6:
	ldr r0, _080206E0
	adds r1, r4, r0
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	strh r5, [r1, #2]
	adds r0, r7, #0
	bl sub_08024B9C
	bl sub_0800494C
	b _08020744
	.align 2, 0
_080206E0: .4byte 0x00005348
_080206E4:
	ldr r2, _08020714
	adds r1, r4, r2
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	movs r0, #7
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_08024CC8
	bl sub_08004BB8
	ldr r0, _08020718
	ldr r1, _0802071C
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08020720
	cmp r1, r0
	bne _08020744
	bl sub_08005BFC
	b _08020744
	.align 2, 0
_08020714: .4byte 0x00005348
_08020718: .4byte gGame
_0802071C: .4byte 0x000067AC
_08020720: .4byte 0x000002C7
_08020724:
	ldr r2, _08020750
	adds r1, r4, r2
	movs r0, #3
	subs r0, r0, r6
	strh r0, [r1]
	movs r0, #2
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r1, #2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r7, #0
	bl sub_08024DCC
	bl sub_08004CB8
_08020744:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020750: .4byte 0x00005348
	.syntax divided
