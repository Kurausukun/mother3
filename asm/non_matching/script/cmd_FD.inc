	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _08020032
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r0, #1
	bl scriptstack_push
_08020032:
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
