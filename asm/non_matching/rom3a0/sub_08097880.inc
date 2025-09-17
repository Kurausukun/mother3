	.syntax unified
sub_08097880:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __11UnitTurnEnd
	pop {r1}
	bx r1
	.syntax divided
