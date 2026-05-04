	.syntax unified
getRTTI__16ShowDownAsEscape:
	push {lr}
	bl get__20ShowDownAsEscapeRTTI
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
