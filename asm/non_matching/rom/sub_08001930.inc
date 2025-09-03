	.syntax unified
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	mov r0, sp
	strh r1, [r0]
	adds r1, r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, r1
	bne _08001944
	adds r1, #8
_08001944:
	str r1, [r2, #0x10]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08001958
	ldr r0, [r1, #4]
	movs r1, #0xa0
	lsls r1, r1, #1
	bl sub_080019DC
_08001958:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
