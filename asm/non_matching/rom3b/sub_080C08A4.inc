	.syntax unified
sub_080C08A4:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x54
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080C0940
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
