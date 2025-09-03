	.syntax unified
	push {r4, lr}
	ldr r4, _080557B8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0xd2
	bl sub_08001B54
	adds r4, #0xd6
	ldrh r0, [r4]
	lsls r1, r0, #0x17
	lsrs r0, r1, #0x1c
	cmp r0, #3
	bhi _080557B2
	ldr r0, _080557BC
	lsrs r1, r1, #0x1c
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080557B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080557B8: .4byte gUnknown_0201AE20
_080557BC: .4byte gUnknown_09B8FFB0
	.syntax divided
