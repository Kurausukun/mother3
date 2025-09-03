	.syntax unified
sub_0802E43C:
	push {lr}
	sub sp, #4
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1
	.syntax divided
