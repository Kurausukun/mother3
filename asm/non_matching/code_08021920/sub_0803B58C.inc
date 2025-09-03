	.syntax unified
sub_0803B58C:
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xf
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0x10
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
