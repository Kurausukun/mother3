	.syntax unified
sub_080AC574:
	push {lr}
	ldr r2, _080AC588
	str r2, [r0, #0x20]
	ldr r2, _080AC58C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC588: .4byte _vt.14DefaultMonster.10UnitObject
_080AC58C: .4byte _vt.14DefaultMonster
	.syntax divided
