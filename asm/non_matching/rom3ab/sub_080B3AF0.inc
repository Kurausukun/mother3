	.syntax unified
sub_080B3AF0:
	push {lr}
	ldr r2, _080B3B00
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B3B00: .4byte vt_09F72120
	.syntax divided
