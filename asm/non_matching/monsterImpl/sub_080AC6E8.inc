	.syntax unified
sub_080AC6E8:
	push {lr}
	ldr r2, _080AC6FC
	str r2, [r0, #0x20]
	ldr r2, _080AC700
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC6FC: .4byte _vt.14DefaultMonster.10UnitObject
_080AC700: .4byte _vt.14DefaultMonster
	.syntax divided
