	.syntax unified
sub_0803EE34:
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xd
	ldr r2, _0803EE70
	adds r4, r1, r2
	movs r3, #0
	ldr r5, _0803EE74
	adds r6, r0, #0
	adds r6, #0xa
_0803EE46:
	lsls r0, r3, #1
	adds r0, r6, r0
	ldrh r1, [r4]
	ldrh r2, [r0]
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0803EE46
	ldrh r0, [r5]
	movs r0, #0
	strh r0, [r5]
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE70: .4byte gUnknown_080C5FD8
_0803EE74: .4byte gSomeBlend
	.syntax divided
