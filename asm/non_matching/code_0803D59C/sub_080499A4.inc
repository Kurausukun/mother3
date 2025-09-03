	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08049C70
	adds r0, r4, #0
	movs r1, #1
	bl sub_080499D0
	ldr r0, _080499CC
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080499CC: .4byte 0x000076DD
	.syntax divided
