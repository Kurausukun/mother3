	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F0A4
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r1, _0803F0A0
	ldr r0, [r1, #8]
	str r0, [r2]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, [r1, #0xc]
	str r0, [r2]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r2, #0xd8
	adds r0, r4, r2
	strh r1, [r0]
	bl sub_0803F124
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F0A0: .4byte gSave
	.syntax divided
