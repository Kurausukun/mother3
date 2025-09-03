	.syntax unified
sub_0805EEF8:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF0C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF0C: .4byte _vt.13UnitTurnBegin
	.syntax divided
