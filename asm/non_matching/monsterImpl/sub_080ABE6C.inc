	.syntax unified
sub_080ABE6C:
	push {lr}
	ldr r2, _080ABE80
	str r2, [r0, #0x20]
	ldr r2, _080ABE84
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABE80: .4byte _vt.14DefaultMonster.10UnitObject
_080ABE84: .4byte _vt.14DefaultMonster
	.syntax divided
