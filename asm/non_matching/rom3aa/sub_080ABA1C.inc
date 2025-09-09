	.syntax unified
sub_080ABA1C:
	push {lr}
	ldr r2, _080ABA30
	str r2, [r0, #0x20]
	ldr r2, _080ABA34
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABA30: .4byte _vt.14DefaultMonster.10UnitObject
_080ABA34: .4byte _vt.14DefaultMonster
	.syntax divided
