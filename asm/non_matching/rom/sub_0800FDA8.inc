	.syntax unified
sub_0800FDA8:
	push {r4, lr}
	ldr r4, _0800FDE0
	adds r0, r4, #0
	bl sub_080101F8
	bl sub_08019F90
	ldr r0, _0800FDE4
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r1, #1
	bl sub_080106CC
	bl sub_0801084C
	bl sub_080105F4
	bl sub_080121D0
	bl sub_08012354
	bl sub_080124C0
	bl sub_08013A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDE0: .4byte gUnknown_02005C0C
_0800FDE4: .4byte 0x000067A0
	.syntax divided
