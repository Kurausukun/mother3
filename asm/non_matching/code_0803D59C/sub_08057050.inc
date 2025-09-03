	.syntax unified
	push {r4, lr}
	ldr r4, _08057080
	adds r0, r4, #0
	movs r1, #0x37
	bl sub_0800289C
	ldr r1, _08057084
	movs r2, #0xa0
	lsls r2, r2, #1
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x38
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _08057088
	movs r2, #0x1f
	movs r3, #0x20
	bl sub_0800160C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057080: .4byte gUnknown_09BCDD8C
_08057084: .4byte 0x06017EC0
_08057088: .4byte gUnknown_02016078
	.syntax divided
