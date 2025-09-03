	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020088
	movs r1, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08020082
	movs r1, #1
_08020082:
	adds r0, r1, #0
	bl scriptstack_push
_08020088:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
