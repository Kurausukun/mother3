	.syntax unified
sub_08019B88:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _08019BBC
	cmp r1, r0
	bge _08019BA8
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	b _08019BAC
_08019BA8:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
_08019BAC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bgt _08019BBC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bge _08019BC2
_08019BBC:
	movs r0, #0x96
	lsls r0, r0, #4
	b _08019BE8
_08019BC2:
	movs r6, #2
	ldrsh r3, [r5, r6]
	subs r2, r2, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r6, #0
	ldrsh r1, [r4, r6]
	subs r0, r0, r1
	muls r0, r2, r0
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r1, r1, r3
	bl Div
	adds r1, r0, #0
	ldrh r0, [r5]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08019BE8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
