	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802B9DC
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bls _0802B9E0
	movs r0, #0
	b _0802B9E2
	.align 2, 0
_0802B9DC: .4byte gGoodsInfo
_0802B9E0:
	movs r0, #1
_0802B9E2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
