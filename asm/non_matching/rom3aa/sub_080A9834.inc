	.syntax unified
sub_080A9834:
	push {lr}
	ldr r2, _080A9848
	str r2, [r0, #0x20]
	ldr r2, _080A984C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9848: .4byte _vt.14DefaultMonster.10UnitObject
_080A984C: .4byte _vt.14DefaultMonster
	.syntax divided
