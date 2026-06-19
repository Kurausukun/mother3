	.syntax unified
dt__19CantAttackMaskedMan:
	push {lr}
	ldr r2, _0809E130
	str r2, [r0, #0x1c]
	bl _._11PlayerSkill
	pop {r0}
	bx r0
	.align 2, 0
_0809E130: .4byte _vt.18DefaultPlayerSkill
	.syntax divided
