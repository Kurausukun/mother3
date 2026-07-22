	.syntax unified
getRTTI__8RoundEnd:
	push {lr}
	bl get__12RoundEndRTTI
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
