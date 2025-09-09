	.syntax unified
sub_080A769C:
	push {lr}
	ldr r2, _080A76B0
	str r2, [r0, #0x20]
	ldr r2, _080A76B4
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A76B0: .4byte _vt.14DefaultMonster.10UnitObject
_080A76B4: .4byte _vt.14DefaultMonster
	.syntax divided
