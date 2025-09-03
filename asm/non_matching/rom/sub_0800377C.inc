	.syntax unified
	push {r4, r5, lr}
	ldr r5, _080037A0
	movs r0, #1
	strh r0, [r5]
	bl m4aMPlayAllStop
	bl m4aSoundMain
	ldr r0, _080037A4
	movs r4, #0
	strh r4, [r0]
	bl init_audio
	strh r4, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080037A0: .4byte 0x04000208
_080037A4: .4byte 0x04000084
	.syntax divided
