	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08054BDC
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r4, [r1, #0xa]
	lsls r4, r4, #1
	movs r1, #1
	bl sub_080544F8
	adds r0, r4, #0
	bl sub_08054604
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054BDC: .4byte gGoodsInfo
	.syntax divided
