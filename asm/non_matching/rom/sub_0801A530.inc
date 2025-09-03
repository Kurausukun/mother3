	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801A544
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A548
	pop {r0}
	bx r0
	.align 2, 0
_0801A544: .4byte gGame
	.syntax divided
