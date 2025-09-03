	.syntax unified
sub_08028020:
	push {r4, lr}
	ldr r4, _0802803C
	adds r0, r4, #0
	bl sub_08028C70
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802803C: .4byte gUnknown_0200D818
	.syntax divided
