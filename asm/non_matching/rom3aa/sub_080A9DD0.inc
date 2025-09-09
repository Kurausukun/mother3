	.syntax unified
sub_080A9DD0:
	push {lr}
	ldr r2, _080A9DE4
	str r2, [r0, #0x20]
	ldr r2, _080A9DE8
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9DE4: .4byte _vt.14DefaultMonster.10UnitObject
_080A9DE8: .4byte _vt.14DefaultMonster
	.syntax divided
