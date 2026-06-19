	.syntax unified
sub_080AC1B4:
	push {lr}
	ldr r2, _080AC1C8
	str r2, [r0, #0x20]
	ldr r2, _080AC1CC
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC1C8: .4byte _vt.14DefaultMonster.10UnitObject
_080AC1CC: .4byte _vt.14DefaultMonster
	.syntax divided
