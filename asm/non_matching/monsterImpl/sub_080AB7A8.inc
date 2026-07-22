	.syntax unified
sub_080AB7A8:
	push {lr}
	ldr r2, _080AB7BC
	str r2, [r0, #0x20]
	ldr r2, _080AB7C0
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB7BC: .4byte _vt.14DefaultMonster.10UnitObject
_080AB7C0: .4byte _vt.14DefaultMonster
	.syntax divided
