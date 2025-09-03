	.syntax unified
	push {lr}
	ldr r0, _0802149C
	ldr r1, _080214A0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	bne _080214A4
	movs r0, #1
	bl scriptstack_push
	b _080214AA
	.align 2, 0
_0802149C: .4byte gGame
_080214A0: .4byte 0x00008490
_080214A4:
	movs r0, #0
	bl scriptstack_push
_080214AA:
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
