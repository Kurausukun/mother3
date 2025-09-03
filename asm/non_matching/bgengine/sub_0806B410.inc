	.syntax unified
sub_0806B410:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _0806B422
	adds r1, #7
_0806B422:
	asrs r5, r1, #3
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B42E
	adds r0, #7
_0806B42E:
	asrs r2, r0, #3
	adds r1, r4, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	movs r3, #0x2c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0806B448
	adds r0, #7
_0806B448:
	asrs r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
