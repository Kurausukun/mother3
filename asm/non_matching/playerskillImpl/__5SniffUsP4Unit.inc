	.syntax unified
__5SniffUsP4Unit:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __11PlayerSkillUsP4Unit
	ldr r0, _0809D8B8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D8B8: .4byte _vt.5Sniff
	.syntax divided
