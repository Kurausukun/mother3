	.syntax unified
sub_08001A14:
	push {lr}
	ldr r3, _08001A34
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r2, r1
	str r2, [r3, #8]
	ldr r0, [r3, #8]
_08001A28:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001A28
	pop {r0}
	bx r0
	.align 2, 0
_08001A34: .4byte 0x040000D4
	.syntax divided
