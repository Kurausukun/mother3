	.syntax unified
sub_080067B4:
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #2
	ldrsh r1, [r2, r3]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080067D8
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	lsls r1, r1, #6
	bl sub_08001A70
	pop {r0}
	bx r0
	.align 2, 0
_080067D8: .4byte 0x06006000
	.syntax divided
