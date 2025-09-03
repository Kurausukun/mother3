	.syntax unified
	push {r4, r5, lr}
	ldr r4, _080590D4
	adds r0, r4, #0
	movs r1, #0x4c
	bl sub_0800289C
	ldr r1, _080590D8
	bl sub_08090F88
	adds r0, r4, #0
	movs r1, #0x4d
	bl sub_0800289C
	adds r5, r0, #0
	ldr r4, _080590DC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xe
	movs r3, #0x40
	bl sub_0800160C
	ldr r0, _080590E0
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080590D4: .4byte gUnknown_09C5FD2C
_080590D8: .4byte 0x06008000
_080590DC: .4byte gUnknown_02016078
_080590E0: .4byte 0x00004244
	.syntax divided
