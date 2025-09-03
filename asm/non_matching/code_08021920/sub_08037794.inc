	.syntax unified
sub_08037794:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08037708
	ldr r0, _080377B0
	movs r1, #0
	strh r4, [r0, #4]
	strh r1, [r0, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080377B0: .4byte gUnknown_02018CD8
	.syntax divided
