	.syntax unified
sub_080A87F8:
	push {lr}
	ldr r2, _080A880C
	str r2, [r0, #0x20]
	ldr r2, _080A8810
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A880C: .4byte _vt.14DefaultMonster.10UnitObject
_080A8810: .4byte _vt.14DefaultMonster
	.syntax divided
