	.syntax unified
sub_0809E8DC:
	push {lr}
	ldr r2, _0809E8EC
	str r2, [r0, #0x1c]
	bl _._11PlayerSkill
	pop {r0}
	bx r0
	.align 2, 0
_0809E8EC: .4byte _vt.18DefaultPlayerSkill
	.syntax divided
