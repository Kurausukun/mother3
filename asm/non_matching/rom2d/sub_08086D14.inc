	.syntax unified
sub_08086D14:
	push {r4, lr}
	adds r4, r0, #0
	bl __5Sound
	ldr r0, _08086D30
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _08086D34
	str r0, [r4, #0x40]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08086D30: .4byte vt_09F84AE8
_08086D34: .4byte gSoundPlayerTable
	.syntax divided
