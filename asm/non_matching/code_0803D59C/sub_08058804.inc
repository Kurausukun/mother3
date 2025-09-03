	.syntax unified
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	add sp, #4
	bx lr
	.align 2, 0
	.syntax divided
