	.syntax unified
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0x80
	orrs r3, r1
	str r3, [sp, #4]
	movs r1, #0xf
	movs r2, #0
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
