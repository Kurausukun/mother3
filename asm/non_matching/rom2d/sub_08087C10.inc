	.syntax unified
sub_08087C10:
	push {lr}
	sub sp, #4
	mov r0, sp
	bl nullsub_30
	ldr r0, [sp]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
