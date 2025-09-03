	.syntax unified
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08001A90
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08001A90: .4byte 0x040000B0
	.syntax divided
