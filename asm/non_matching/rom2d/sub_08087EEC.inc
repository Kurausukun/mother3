	.syntax unified
sub_08087EEC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08087F0C
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4]
	str r0, [r4, #4]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08087F3C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08087F0C: .4byte _vt.11Unk08087ED8
	.syntax divided
