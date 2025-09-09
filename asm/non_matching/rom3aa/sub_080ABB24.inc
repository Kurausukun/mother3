	.syntax unified
sub_080ABB24:
	push {lr}
	ldr r2, _080ABB38
	str r2, [r0, #0x20]
	ldr r2, _080ABB3C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABB38: .4byte _vt.14DefaultMonster.10UnitObject
_080ABB3C: .4byte _vt.14DefaultMonster
	.syntax divided
