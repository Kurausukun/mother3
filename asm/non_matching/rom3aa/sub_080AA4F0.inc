	.syntax unified
sub_080AA4F0:
	push {lr}
	ldr r2, _080AA504
	str r2, [r0, #0x20]
	ldr r2, _080AA508
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA504: .4byte _vt.14DefaultMonster.10UnitObject
_080AA508: .4byte _vt.14DefaultMonster
	.syntax divided
