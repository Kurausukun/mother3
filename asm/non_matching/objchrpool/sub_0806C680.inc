	.syntax unified
sub_0806C680:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsrs r4, r1, #4
	movs r0, #3
	ands r4, r0
	adds r0, r5, #0
	bl sub_0806C6C4
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r3, r0, #2
	adds r0, r3, r5
	ldr r0, [r0, #0x24]
	cmp r2, r0
	blt _0806C6A8
	ldr r0, _0806C6A4
	b _0806C6BE
	.align 2, 0
_0806C6A4: .4byte 0x0000FFFF
_0806C6A8:
	adds r0, r3, r5
	lsls r2, r2, #3
	ldr r1, [r0, #0x28]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r3, r5
	ldr r0, [r0, #0x28]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C6BE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
