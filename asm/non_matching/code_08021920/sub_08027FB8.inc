	.syntax unified
	push {r4, lr}
	ldr r4, _08027FD4
	adds r0, r4, #0
	bl sub_08028080
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027FD4: .4byte gUnknown_0200D818
	.syntax divided
