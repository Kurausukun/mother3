	.syntax unified
	push {r4, lr}
	ldr r4, _080037D4
	ldrh r0, [r4]
	cmp r0, #0
	bne _080037CE
	bl m4aSoundMain
	movs r0, #1
	strh r0, [r4]
_080037CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080037D4: .4byte gAudioSynced
	.syntax divided
