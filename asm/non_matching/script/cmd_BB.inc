	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	movs r1, #3
	ands r5, r1
	movs r1, #0x3f
	ands r4, r1
	ands r0, r1
	ldr r2, _08020928
	ldr r1, _0802092C
	lsls r5, r5, #6
	orrs r4, r5
	lsls r0, r0, #8
	orrs r4, r0
	ldr r0, _08020930
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r4, [r1]
	ldrh r0, [r1]
	ldrh r1, [r2]
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020928: .4byte gSomeBlend
_0802092C: .4byte gGame
_08020930: .4byte 0x0000679C
	.syntax divided
