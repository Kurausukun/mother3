	.syntax unified
sub_0803E6EC:
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_08050EEC
	ldr r4, _0803E728
	adds r0, r4, #0
	bl sub_0803E738
	ldr r1, _0803E72C
	adds r0, r4, r1
	ldr r2, _0803E730
	adds r1, r4, r2
	bl sub_0803EB78
	bl sub_0803E834
	ldr r0, _0803E734
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0803E908
	adds r0, r4, #0
	bl sub_0803EA4C
	adds r0, r5, #0
	bl sub_080019A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E728: .4byte gUnknown_020225DC
_0803E72C: .4byte 0xFFFF3A4C
_0803E730: .4byte 0xFFFF3A9C
_0803E734: .4byte 0xFFFF891C
	.syntax divided
