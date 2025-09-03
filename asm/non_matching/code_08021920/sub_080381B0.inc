	.syntax unified
sub_080381B0:
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xc]
	cmp r0, #3
	bhi _080381D4
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080381D8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x88
	lsls r2, r2, #4
	adds r1, r1, r2
	strb r0, [r1]
	bl sub_08037B4C
_080381D4:
	pop {r0}
	bx r0
	.align 2, 0
_080381D8: .4byte gUnknown_02018CD8
	.syntax divided
