	.syntax unified
sub_080357D0:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0
	ldrsh r5, [r4, r1]
	ldrh r0, [r6]
	lsrs r1, r0, #1
	adds r0, r5, r1
	cmp r2, r0
	bgt _08035818
	ldrh r0, [r3, #4]
	adds r0, r2, r0
	subs r1, r5, r1
	cmp r0, r1
	blt _08035818
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _08035818
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	cmp r0, r1
	blt _08035818
	movs r0, #1
	b _0803581A
_08035818:
	movs r0, #0
_0803581A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
