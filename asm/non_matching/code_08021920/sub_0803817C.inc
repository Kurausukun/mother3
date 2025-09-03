	.syntax unified
sub_0803817C:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r3, #3
	bhi _080381A6
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r2, _080381AC
	adds r0, r0, r2
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrh r1, [r4, #4]
	strh r1, [r0, #0xe]
	movs r0, #0x88
	lsls r0, r0, #4
	adds r2, r2, r0
	strb r3, [r2]
	bl sub_08037B4C
_080381A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080381AC: .4byte gUnknown_02018CD8
	.syntax divided
