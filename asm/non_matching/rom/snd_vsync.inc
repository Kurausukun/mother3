	.syntax unified
	push {lr}
	bl m4aSoundVSync
	ldr r1, _080037B8
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080037B8: .4byte gAudioSynced
	.syntax divided
