	.syntax unified
dt__3Run:
	push {lr}
	ldr r2, _0809E3A0
	str r2, [r0, #0x1c]
	bl _._11PlayerSkill
	pop {r0}
	bx r0
	.align 2, 0
_0809E3A0: .4byte _vt.18DefaultPlayerSkill
	.syntax divided
