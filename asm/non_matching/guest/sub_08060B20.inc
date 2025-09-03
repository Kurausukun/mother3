	.syntax unified
	push {r4, lr}
	sub sp, #4
	str r1, [sp]
	adds r0, #0x80
	movs r2, #0
	ldr r1, [r0, #4]
	cmp r2, r1
	bge _08060B48
	ldr r4, [sp]
	adds r3, r1, #0
	ldr r1, [r0, #8]
_08060B36:
	ldr r0, [r1]
	cmp r0, r4
	bne _08060B40
	movs r0, #1
	b _08060B4A
_08060B40:
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blt _08060B36
_08060B48:
	movs r0, #0
_08060B4A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
