	.syntax unified
init__13SndMonManager:
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl __6SndMon
	pop {r1}
	bx r1
	.syntax divided
