	.syntax unified
init__12RoundEndRTTI:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EF34
	pop {r1}
	bx r1
	.syntax divided
