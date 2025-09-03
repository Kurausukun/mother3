	.syntax unified
	push {r4, r5, r6, lr}
	ldr r4, _080570E4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x88
	lsls r2, r2, #7
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _080570E8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0xc0
	bl sub_0800160C
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, _080570EC
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001A14
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001A38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080570E4: .4byte gUnknown_09BCDD8C
_080570E8: .4byte gUnknown_02016078
_080570EC: .4byte 0x00002CAC
	.syntax divided
