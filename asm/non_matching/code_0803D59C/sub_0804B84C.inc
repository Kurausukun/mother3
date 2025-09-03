	.syntax unified
	push {r4, lr}
	ldr r0, _0804B878
	adds r4, r0, #0
	adds r4, #0x74
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	movs r3, #0x58
	bl sub_080511F8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B878: .4byte gUnknown_0201A55C
	.syntax divided
