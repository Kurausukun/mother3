	.syntax unified
sub_080A0AE4:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0AFC
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0AFC: .4byte vt_09F4D8A0
	.syntax divided
