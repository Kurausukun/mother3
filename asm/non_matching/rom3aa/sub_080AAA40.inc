	.syntax unified
sub_080AAA40:
	push {lr}
	ldr r2, _080AAA54
	str r2, [r0, #0x20]
	ldr r2, _080AAA58
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AAA54: .4byte _vt.14DefaultMonster.10UnitObject
_080AAA58: .4byte _vt.14DefaultMonster
	.syntax divided
