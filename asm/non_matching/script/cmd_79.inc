	.syntax unified
cmd_79:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020440
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
_08020440:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
