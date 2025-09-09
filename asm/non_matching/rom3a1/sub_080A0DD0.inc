	.syntax unified
sub_080A0DD0:
	push {lr}
	ldr r2, _080A0DE0
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0DE0: .4byte vt_09F4E080
	.syntax divided
