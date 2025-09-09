	.syntax unified
sub_080A8CF8:
	push {lr}
	ldr r2, _080A8D0C
	str r2, [r0, #0x20]
	ldr r2, _080A8D10
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A8D0C: .4byte _vt.14DefaultMonster.10UnitObject
_080A8D10: .4byte _vt.14DefaultMonster
	.syntax divided
