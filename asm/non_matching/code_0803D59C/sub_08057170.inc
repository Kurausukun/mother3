	.syntax unified
	push {r4, r5, r6, lr}
	ldr r4, _080571D0
	adds r0, r4, #0
	movs r1, #6
	bl sub_0800289C
	ldr r1, _080571D4
	bl sub_08090F88
	adds r0, r4, #0
	movs r1, #7
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _080571D8
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0800160C
	movs r0, #8
	bl sub_0805734C
	ldr r0, _080571DC
	adds r1, r4, r0
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, _080571E0
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08001B18
	ldr r0, _080571E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080571E8
	cmp r0, #1
	beq _080571F6
	b _080571FE
	.align 2, 0
_080571D0: .4byte gUnknown_09BCDD8C
_080571D4: .4byte 0x06008000
_080571D8: .4byte gUnknown_02016078
_080571DC: .4byte 0x00002C46
_080571E0: .4byte 0x00002CAC
_080571E4: .4byte gUnknown_020047D0
_080571E8:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08001B54
	b _080571FE
_080571F6:
	adds r0, r5, #0
	adds r1, r6, #0
	bl memclear
_080571FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
