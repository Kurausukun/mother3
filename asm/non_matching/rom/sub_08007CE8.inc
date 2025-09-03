	.syntax unified
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xd
	ldr r2, _08007D14
	adds r4, r1, r2
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0xa
_08007CF8:
	lsls r0, r3, #1
	adds r0, r5, r0
	ldrh r1, [r4]
	ldrh r2, [r0]
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08007CF8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007D14: .4byte gUnknown_080C1B20
	.syntax divided
