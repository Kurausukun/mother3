	.syntax unified
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r4, _0803B60C
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_0803B5D2:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0803B5D2
	bl sub_0805BAD4
	bl sub_0803B610
	bl sub_0805BAF4
	bl sub_0803B638
	bl sub_0805BB14
	bl sub_0803B660
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B60C: .4byte gUnknown_0202AE78
	.syntax divided
