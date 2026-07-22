	.syntax unified
sub_080A9C34:
	push {lr}
	ldr r2, _080A9C48
	str r2, [r0, #0x20]
	ldr r2, _080A9C4C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9C48: .4byte _vt.14DefaultMonster.10UnitObject
_080A9C4C: .4byte _vt.14DefaultMonster
	.syntax divided
