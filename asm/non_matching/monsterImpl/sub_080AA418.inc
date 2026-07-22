	.syntax unified
sub_080AA418:
	push {lr}
	ldr r2, _080AA42C
	str r2, [r0, #0x20]
	ldr r2, _080AA430
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA42C: .4byte _vt.14DefaultMonster.10UnitObject
_080AA430: .4byte _vt.14DefaultMonster
	.syntax divided
