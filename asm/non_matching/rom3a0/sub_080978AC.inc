	.syntax unified
init__17UnitTurnBeginRTTI:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __13UnitTurnBegin
	pop {r1}
	bx r1
	.syntax divided
