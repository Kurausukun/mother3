	.syntax unified
sub_080B25C4:
	push {lr}
	ldr r2, _080B25D4
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B25D4: .4byte vt_09F72120
	.syntax divided
