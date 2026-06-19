	.syntax unified
sub_080AD364:
	push {lr}
	ldr r2, _080AD378
	str r2, [r0, #0x20]
	ldr r2, _080AD37C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD378: .4byte _vt.14DefaultMonster.10UnitObject
_080AD37C: .4byte _vt.14DefaultMonster
	.syntax divided
