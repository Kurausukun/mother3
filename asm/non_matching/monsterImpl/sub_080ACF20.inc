	.syntax unified
sub_080ACF20:
	push {lr}
	ldr r2, _080ACF34
	str r2, [r0, #0x20]
	ldr r2, _080ACF38
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACF34: .4byte _vt.14DefaultMonster.10UnitObject
_080ACF38: .4byte _vt.14DefaultMonster
	.syntax divided
