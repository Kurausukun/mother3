	.syntax unified
sub_080749D8:
	push {r4, lr}
	ldr r4, _08074A04
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A08
	str r0, [r4, #8]
	ldr r4, _08074A0C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A10
	str r0, [r4, #8]
	ldr r4, _08074A14
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A18
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074A04: .4byte sRhythmInRTTI
_08074A08: .4byte _vt.12RhythmInRTTI
_08074A0C: .4byte sRhythmOutRTTI
_08074A10: .4byte _vt.13RhythmOutRTTI
_08074A14: .4byte sRhythmBgmRTTI
_08074A18: .4byte _vt.13RhythmBgmRTTI
	.syntax divided
