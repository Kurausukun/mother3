	.syntax unified
sub_080978AC:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __13UnitTurnBegin
	pop {r1}
	bx r1
	.syntax divided
