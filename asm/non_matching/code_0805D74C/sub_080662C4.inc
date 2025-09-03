	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, [r2, #0x24]
	adds r3, r1, #1
	cmp r3, #0x14
	bgt _080662E2
	lsls r1, r1, #1
	adds r0, #0x28
	adds r0, r0, r1
	strh r4, [r0]
	str r3, [r2, #0x24]
	movs r0, #1
	b _080662E4
_080662E2:
	movs r0, #0
_080662E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
