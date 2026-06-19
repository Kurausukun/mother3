	.syntax unified
sub_080A09A8:
	push {lr}
	ldr r2, _080A09BC
	str r2, [r0, #0x20]
	ldr r2, _080A09C0
	str r2, [r0, #0x1c]
	bl _._5Guest
	pop {r0}
	bx r0
	.align 2, 0
_080A09BC: .4byte _vt.12DefaultGuest.10UnitObject
_080A09C0: .4byte _vt.12DefaultGuest
	.syntax divided
