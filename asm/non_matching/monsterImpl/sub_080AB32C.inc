	.syntax unified
sub_080AB32C:
	push {lr}
	ldr r2, _080AB340
	str r2, [r0, #0x20]
	ldr r2, _080AB344
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB340: .4byte _vt.14DefaultMonster.10UnitObject
_080AB344: .4byte _vt.14DefaultMonster
	.syntax divided
