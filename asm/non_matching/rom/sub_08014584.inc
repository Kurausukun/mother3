	.syntax unified
	push {r4, lr}
	ldr r4, _080145A0
	ldr r0, _080145A4
	adds r4, r4, r0
	movs r0, #3
	strb r0, [r4]
	bl sub_080140D0
	movs r0, #0x17
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080145A0: .4byte gGame
_080145A4: .4byte 0x0000595B
	.syntax divided
