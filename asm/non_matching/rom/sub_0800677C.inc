	.syntax unified
sub_0800677C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080067AC
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	movs r1, #0
	bl sub_08001378
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r2, _080067B0
	adds r1, r1, r2
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	bl sub_08007318
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080067AC: .4byte gUnknown_02016078
_080067B0: .4byte 0x06006000
	.syntax divided
