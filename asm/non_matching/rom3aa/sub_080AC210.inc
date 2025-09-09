	.syntax unified
sub_080AC210:
	push {lr}
	ldr r2, _080AC224
	str r2, [r0, #0x20]
	ldr r2, _080AC228
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC224: .4byte _vt.14DefaultMonster.10UnitObject
_080AC228: .4byte _vt.14DefaultMonster
	.syntax divided
