	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsh r4, [r5, r0]
	adds r4, #0x10
	mov r0, r8
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _0800E4CC
	ldrh r0, [r5, #2]
	adds r0, #0x10
	strh r0, [r5, #2]
_0800E4CC:
	mov r0, r8
	movs r1, #1
	adds r2, r5, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800E4E2
	movs r0, #0
	b _0800E4F6
_0800E4E2:
	ldrh r0, [r6]
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r6]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	strh r2, [r7]
	movs r0, #1
	strh r0, [r7, #2]
_0800E4F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
