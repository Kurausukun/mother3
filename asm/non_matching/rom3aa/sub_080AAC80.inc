	.syntax unified
sub_080AAC80:
	push {lr}
	ldr r2, _080AAC94
	str r2, [r0, #0x20]
	ldr r2, _080AAC98
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AAC94: .4byte _vt.14DefaultMonster.10UnitObject
_080AAC98: .4byte _vt.14DefaultMonster
	.syntax divided
