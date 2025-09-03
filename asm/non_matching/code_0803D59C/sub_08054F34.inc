	.syntax unified
sub_08054F34:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08054F50
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bls _08054F54
	movs r0, #0
	b _08054F56
	.align 2, 0
_08054F50: .4byte gGoodsInfo
_08054F54:
	movs r0, #1
_08054F56:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
