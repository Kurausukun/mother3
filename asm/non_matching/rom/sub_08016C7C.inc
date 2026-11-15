	.syntax unified
sub_08016C7C:
	push {lr}
	bl clearGfxBg0AndPaletteBuffer
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
