	.syntax unified
sub_0806D4B0:
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806D4CC
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D4C6
	adds r0, r2, #0
	bl __builtin_delete
_0806D4C6:
	pop {r0}
	bx r0
	.align 2, 0
_0806D4CC: .4byte vt_09F7FC30
	.syntax divided
