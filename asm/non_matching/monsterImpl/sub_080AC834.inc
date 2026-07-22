	.syntax unified
sub_080AC834:
	push {lr}
	ldr r2, _080AC848
	str r2, [r0, #0x20]
	ldr r2, _080AC84C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC848: .4byte _vt.14DefaultMonster.10UnitObject
_080AC84C: .4byte _vt.14DefaultMonster
	.syntax divided
