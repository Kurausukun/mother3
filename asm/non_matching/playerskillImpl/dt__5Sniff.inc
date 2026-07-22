	.syntax unified
dt__5Sniff:
	push {lr}
	ldr r2, _0809DD98
	str r2, [r0, #0x1c]
	bl _._11PlayerSkill
	pop {r0}
	bx r0
	.align 2, 0
_0809DD98: .4byte _vt.18DefaultPlayerSkill
	.syntax divided
