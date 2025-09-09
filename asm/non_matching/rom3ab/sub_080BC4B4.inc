	.syntax unified
sub_080BC4B4:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082B78
	ldr r0, _080BC4CC
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC4CC: .4byte __vt_5Goods
	.syntax divided
