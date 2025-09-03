	.syntax unified
	push {lr}
	bl sub_080037E4
	ldr r0, _080523D0
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080037D8
	pop {r0}
	bx r0
	.align 2, 0
_080523D0: .4byte gUnknown_02015E28
	.syntax divided
