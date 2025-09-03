	.syntax unified
sub_0802B9E8:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802BA10
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _0802BA18
	cmp r0, #1
	blo _0802BA14
	cmp r0, #2
	beq _0802BA1C
	cmp r0, #3
	beq _0802BA20
	movs r0, #4
	b _0802BA22
	.align 2, 0
_0802BA10: .4byte gGoodsInfo
_0802BA14:
	movs r0, #0
	b _0802BA22
_0802BA18:
	movs r0, #1
	b _0802BA22
_0802BA1C:
	movs r0, #2
	b _0802BA22
_0802BA20:
	movs r0, #3
_0802BA22:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
