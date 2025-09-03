	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xc
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0xd
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0xe
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
