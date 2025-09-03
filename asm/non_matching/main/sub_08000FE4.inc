    .syntax unified
sub_08000FE4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08001008 @ =0x00002C4A
	adds r3, r0, r2
	ldrh r2, [r3]
	lsls r2, r2, #3
	movs r4, #0x94
	lsls r4, r4, #6
	adds r2, r2, r4
	adds r0, r0, r2
	ldrh r2, [r3]
	adds r1, r1, r2
	ldrh r2, [r3]
	strh r1, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001008: .4byte 0x00002C4A
    .syntax divided
