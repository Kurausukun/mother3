	.syntax unified
cmd_set_fade:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r4, _080200B8
	ldr r2, _080200BC
	adds r1, r4, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _080200C0
	adds r4, r4, r1
	strb r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080200B8: .4byte gGame
_080200BC: .4byte 0x0000595B
_080200C0: .4byte 0x0000595C
	.syntax divided
