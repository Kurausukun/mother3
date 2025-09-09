	.syntax unified
sub_080ACCE4:
	push {lr}
	ldr r2, _080ACCF8
	str r2, [r0, #0x20]
	ldr r2, _080ACCFC
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACCF8: .4byte _vt.14DefaultMonster.10UnitObject
_080ACCFC: .4byte _vt.14DefaultMonster
	.syntax divided
