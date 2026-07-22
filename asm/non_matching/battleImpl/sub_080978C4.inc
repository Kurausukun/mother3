	.syntax unified
dt__13UnitTurnBegin:
	push {lr}
	ldr r2, _080978D4
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080978D4: .4byte _vt.5Event
	.syntax divided
