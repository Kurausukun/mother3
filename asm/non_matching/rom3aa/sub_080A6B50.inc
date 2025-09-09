	.syntax unified
sub_080A6B50:
	push {lr}
	ldr r2, _080A6B64
	str r2, [r0, #0x20]
	ldr r2, _080A6B68
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6B64: .4byte _vt.14DefaultMonster.10UnitObject
_080A6B68: .4byte _vt.14DefaultMonster
	.syntax divided
