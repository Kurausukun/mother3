	.syntax unified
	push {r4, r5, lr}
	ldr r4, _08027934
	ldr r0, [r4, #0x28]
	movs r5, #0xc0
	lsls r5, r5, #1
	movs r1, #0
	adds r2, r5, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	ldr r0, _08027938
	ldr r1, _0802793C
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027934: .4byte gGame
_08027938: .4byte gUnknown_03005314
_0802793C: .4byte 0x00009488
	.syntax divided
