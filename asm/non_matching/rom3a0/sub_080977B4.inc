	.syntax unified
init__13BattleManager:
	push {lr}
	movs r0, #0x80
	bl __builtin_new
	bl __6Battle
	pop {r1}
	bx r1
	.syntax divided
