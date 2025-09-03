	.syntax unified
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	subs r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r2, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0xf
	adds r3, r4, #0
	bl sub_08001814
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
