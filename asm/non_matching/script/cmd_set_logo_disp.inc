	.syntax unified
	push {lr}
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08020C48
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #5
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08020C48: .4byte gGame
	.syntax divided
