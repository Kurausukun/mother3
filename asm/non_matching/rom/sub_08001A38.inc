	.syntax unified
	push {lr}
	sub sp, #4
	mov r3, sp
	strh r2, [r3]
	ldr r2, _08001A6C
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001A64
_08001A5C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A5C
_08001A64:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08001A6C: .4byte 0x040000D4
	.syntax divided
