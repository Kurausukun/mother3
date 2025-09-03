	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r1, _0805285C
	ldr r2, _08052860
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r5, r0
	bhs _08052856
	movs r3, #0xd4
	lsls r3, r3, #6
	adds r6, r1, r3
	adds r7, r1, r2
_08052824:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r4, r0, #0
	lsls r1, r5, #7
	adds r1, r1, r6
	lsls r2, r5, #1
	movs r3, #0xd7
	lsls r3, r3, #4
	adds r0, r6, r3
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_080528A0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08052D1C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7]
	cmp r5, r0
	blo _08052824
_08052856:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805285C: .4byte gSomeBlend
_08052860: .4byte 0x00002DFA
	.syntax divided
