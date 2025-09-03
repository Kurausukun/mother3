	.syntax unified
cmd_FE:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj
	cmp r0, #0
	beq _0802005C
	adds r0, #0xbb
	strb r4, [r0]
_0802005C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
