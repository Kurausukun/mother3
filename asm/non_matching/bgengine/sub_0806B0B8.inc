	.syntax unified
getRTTI__8BGEngine:
	push {lr}
	bl manager__15BGEngineManager
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
