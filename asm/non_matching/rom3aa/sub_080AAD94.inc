	.syntax unified
sub_080AAD94:
	push {lr}
	ldr r2, _080AADA8
	str r2, [r0, #0x20]
	ldr r2, _080AADAC
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AADA8: .4byte _vt.14DefaultMonster.10UnitObject
_080AADAC: .4byte _vt.14DefaultMonster
	.syntax divided
