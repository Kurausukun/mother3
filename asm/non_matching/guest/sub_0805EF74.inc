	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF8C
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF8C: .4byte _vt.10RoundBegin
	.syntax divided
