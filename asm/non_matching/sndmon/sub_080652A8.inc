	.syntax unified
sub_080652A8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080652D8
	str r0, [r4, #0x1c]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl _._11Unk0806D478
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #2
	bl _._11Unk0806D548
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080652D8: .4byte vt_09F7DEB0
	.syntax divided
