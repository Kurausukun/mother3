	.syntax unified
sub_0802E458:
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
