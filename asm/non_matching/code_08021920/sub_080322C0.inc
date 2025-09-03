	.syntax unified
	sub sp, #4
	ldr r1, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	add sp, #4
	bx lr
	.syntax divided
