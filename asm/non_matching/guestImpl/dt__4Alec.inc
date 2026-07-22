	.syntax unified
dt__4Alec:
	push {lr}
	ldr r2, _080A092C
	str r2, [r0, #0x20]
	ldr r2, _080A0930
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A092C: .4byte _vt.12DefaultGuest.10UnitObject
_080A0930: .4byte _vt.12DefaultGuest
	.syntax divided
