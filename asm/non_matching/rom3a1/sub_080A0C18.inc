	.syntax unified
sub_080A0C18:
	push {lr}
	ldr r2, _080A0C28
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0C28: .4byte vt_09F4E080
	.syntax divided
