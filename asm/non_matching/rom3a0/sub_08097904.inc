	.syntax unified
init__14RoundBeginRTTI:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EF74
	pop {r1}
	bx r1
	.syntax divided
