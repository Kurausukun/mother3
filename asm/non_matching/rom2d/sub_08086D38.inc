	.syntax unified
sub_08086D38:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08086D64
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r1, [r4, #2]
	adds r0, r6, #0
	bl __5SoundUs
	ldr r0, _08086D68
	str r0, [r6, #0x1c]
	strh r5, [r6, #0x3c]
	str r4, [r6, #0x40]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08086D64: .4byte gSoundPlayerTable
_08086D68: .4byte vt_09F84AE8
	.syntax divided
