	.syntax unified
	ldr r0, _08052170
	adds r0, #8
	ldr r2, _08052174
	movs r3, #0x86
	lsls r3, r3, #1
	adds r1, r2, r3
	str r0, [r1]
	ldr r1, _08052178
	adds r0, r0, r1
	adds r3, #4
	adds r1, r2, r3
	str r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r3, #8
	adds r1, r2, r3
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	subs r3, #4
	adds r1, r2, r3
	str r0, [r1]
	bx lr
	.align 2, 0
_08052170: .4byte gUnknown_0200FD90
_08052174: .4byte gUnknown_020050C0
_08052178: .4byte 0x00000898
	.syntax divided
