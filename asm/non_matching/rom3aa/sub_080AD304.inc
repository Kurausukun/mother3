	.syntax unified
sub_080AD304:
	push {lr}
	ldr r2, _080AD318
	str r2, [r0, #0x20]
	ldr r2, _080AD31C
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD318: .4byte _vt.14DefaultMonster.10UnitObject
_080AD31C: .4byte _vt.14DefaultMonster
	.syntax divided
