	.syntax unified
sub_080AA5BC:
	push {lr}
	ldr r2, _080AA5D0
	str r2, [r0, #0x20]
	ldr r2, _080AA5D4
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA5D0: .4byte _vt.14DefaultMonster.10UnitObject
_080AA5D4: .4byte _vt.14DefaultMonster
	.syntax divided
