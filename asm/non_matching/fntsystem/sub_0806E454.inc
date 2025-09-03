	.syntax unified
sub_0806E454:
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	movs r0, #0
	strh r0, [r3, #6]
	cmp r0, r2
	bge _0806E47A
	ldr r4, [r3]
_0806E464:
	lsls r0, r0, #1
	adds r1, r0, r4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	adds r0, #1
	strh r0, [r3, #6]
	ldrh r0, [r3, #6]
	cmp r0, r2
	blt _0806E464
_0806E47A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
