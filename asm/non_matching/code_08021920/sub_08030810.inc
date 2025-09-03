	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r0, #0
	bl get_obj_direct
	adds r7, r0, #0
	ldr r0, _08030830
	ldr r1, _08030834
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08030838
	bl sub_0803092C
	b _08030922
	.align 2, 0
_08030830: .4byte gGame
_08030834: .4byte 0x0000829B
_08030838:
	movs r6, #0
	mov r5, sp
_0803083C:
	adds r0, r6, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030918
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08030918
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030872
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030884
_08030872:
	ldr r0, _080308A4
	ldr r1, _080308A8
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030918
_08030884:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080308AC
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080308B6
	.align 2, 0
_080308A4: .4byte gGame
_080308A8: .4byte 0x00009D10
_080308AC:
	ldr r0, _080308F8
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
_080308B6:
	ldrh r2, [r5]
	ldr r1, _080308FC
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r5, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08030900
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030900
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _08030918
	.align 2, 0
_080308F8: .4byte gUnknown_02001004
_080308FC: .4byte 0xFFFF0000
_08030900:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_08030918:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0803083C
_08030922:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
