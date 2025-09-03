	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08090F70
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	ldr r5, _08036814
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r0, #0
_08036808:
	cmp r3, r2
	bhs _08036818
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	b _0803682A
	.align 2, 0
_08036814: .4byte gUnknown_08D2E0FE
_08036818:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08036808
	movs r0, #3
_0803682A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
