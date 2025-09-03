	.syntax unified
sub_080019DC:
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08001A10
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001A0A
_08001A02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A02
_08001A0A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08001A10: .4byte 0x040000D4
	.syntax divided
