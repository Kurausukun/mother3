	.syntax unified
dt__10RoundBegin:
	push {lr}
	ldr r2, _0809792C
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0809792C: .4byte _vt.5Event
	.syntax divided
