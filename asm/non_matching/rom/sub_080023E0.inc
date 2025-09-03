	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	ldrsh r3, [r2, r0]
	movs r0, #0
	ldrsh r4, [r1, r0]
	ldrh r0, [r1, #4]
	adds r0, r4, r0
	cmp r3, r0
	bgt _08002418
	ldrh r0, [r2, #4]
	adds r0, r3, r0
	cmp r0, r4
	blt _08002418
	movs r0, #2
	ldrsh r3, [r2, r0]
	movs r0, #2
	ldrsh r4, [r1, r0]
	ldrh r0, [r1, #6]
	adds r0, r4, r0
	cmp r3, r0
	bgt _08002418
	ldrh r0, [r2, #6]
	adds r0, r3, r0
	cmp r0, r4
	blt _08002418
	movs r0, #1
	b _0800241A
_08002418:
	movs r0, #0
_0800241A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
