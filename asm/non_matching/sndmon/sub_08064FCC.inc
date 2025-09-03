	.syntax unified
	push {r4, lr}
	ldr r4, _08064FE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08064FE4
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064FE0: .4byte gUnknown_020038B0
_08064FE4: .4byte vt_09F79D20
	.syntax divided
