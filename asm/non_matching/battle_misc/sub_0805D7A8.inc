	.syntax unified
getRTTI__10RoundBegin:
	push {lr}
	bl get__14RoundBeginRTTI
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
