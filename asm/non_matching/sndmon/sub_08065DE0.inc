	.syntax unified
getRTTI__6SndMon:
	push {lr}
	bl manager__13SndMonManager
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
