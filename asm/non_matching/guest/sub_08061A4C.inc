	.syntax unified
create__18PlayerSkillFactoryUsP4Unit:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08061A64
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08061A64: .4byte sPlayerSkillSpawners
	.syntax divided
