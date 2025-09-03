	.syntax unified
sub_0802E630:
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	movs r3, #1
	bl sub_0802FC98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
