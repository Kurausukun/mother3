	.syntax unified
sub_080A0B38:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __10GuestSkillUsP4Unit
	ldr r0, _080A0B50
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B50: .4byte vt_09F4E080
	.syntax divided
