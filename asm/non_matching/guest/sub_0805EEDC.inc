	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	ldr r0, _0805EEF4
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EEF4: .4byte _vt.13UnitTurnBegin
	.syntax divided
