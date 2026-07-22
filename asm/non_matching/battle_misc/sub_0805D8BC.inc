	.syntax unified
getRTTI__6Battle:
	push {lr}
	bl manager__13BattleManager
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
