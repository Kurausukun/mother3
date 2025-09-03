	.syntax unified
sub_0800AF44:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #0x14
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r5, #0x70]
	str r0, [r5, #0x78]
	str r0, [r5, #0x74]
	str r0, [r5, #0x7c]
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, _0800AFB8
	movs r1, #0
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _0800AFBC
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r4, #0
_0800AF98:
	lsls r1, r4, #5
	adds r1, #0x10
	adds r1, r5, r1
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0800AF98
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFB8: .4byte gUnknown_09AF3790
_0800AFBC: .4byte gUnknown_080C2008
	.syntax divided
