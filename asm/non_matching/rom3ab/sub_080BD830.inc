	.syntax unified
sub_080BD830:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r6, r2, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x11
	adds r2, r5, #0
	bl PlayAnimation
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl onPlayAnim__6ActionP4Unitb
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
