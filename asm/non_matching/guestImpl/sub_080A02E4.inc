	.syntax unified
dt__5Ionia:
	push {lr}
	ldr r2, _080A02F8
	str r2, [r0, #0x20]
	ldr r2, _080A02FC
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A02F8: .4byte _vt.12DefaultGuest.10UnitObject
_080A02FC: .4byte _vt.12DefaultGuest
	.syntax divided
