	.syntax unified
getRTTI__7GEngine:
	push {lr}
	bl manager__14GEngineManager
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
