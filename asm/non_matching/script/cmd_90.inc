	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	cmp r1, #0
	bne _080214C8
	ldr r0, _080214C4
	strb r1, [r0, #4]
	b _080214CE
	.align 2, 0
_080214C4: .4byte gEncounter
_080214C8:
	ldr r1, _080214D4
	movs r0, #1
	strb r0, [r1, #4]
_080214CE:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080214D4: .4byte gEncounter
	.syntax divided
