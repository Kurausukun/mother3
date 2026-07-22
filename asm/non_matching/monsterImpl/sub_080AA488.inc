	.syntax unified
sub_080AA488:
	push {lr}
	ldr r2, _080AA49C
	str r2, [r0, #0x20]
	ldr r2, _080AA4A0
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA49C: .4byte _vt.14DefaultMonster.10UnitObject
_080AA4A0: .4byte _vt.14DefaultMonster
	.syntax divided
