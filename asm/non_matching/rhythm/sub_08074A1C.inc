	.syntax unified
sub_08074A1C:
	push {r4, lr}
	adds r4, r0, #0
	bl __5Sound
	ldr r0, _08074A30
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08074A30: .4byte _vt.10RhythmGame
	.syntax divided
