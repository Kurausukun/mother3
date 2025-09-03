	.syntax unified
	push {lr}
	cmp r0, r1
	bne _080218BE
	movs r0, #1
	bl scriptstack_push
	b _080218C4
_080218BE:
	movs r0, #0
	bl scriptstack_push
_080218C4:
	pop {r0}
	bx r0
	.syntax divided
