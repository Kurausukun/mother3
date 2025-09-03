	.syntax unified
sub_0806E3B4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldrh r1, [r7, #6]
	ldrh r0, [r4, #6]
	adds r1, r1, r0
	adds r0, r7, #0
	bl sub_0806E418
	ldrh r0, [r7, #6]
	subs r2, r0, #1
	cmp r2, r6
	blt _0806E3EC
	ldr r5, [r7]
	lsls r0, r2, #1
	adds r3, r0, r5
_0806E3D6:
	ldrh r0, [r4, #6]
	adds r0, r6, r0
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r3]
	strh r1, [r0]
	subs r3, #2
	subs r2, #1
	cmp r2, r6
	bge _0806E3D6
_0806E3EC:
	movs r3, #0
	ldrh r0, [r4, #6]
	cmp r3, r0
	bge _0806E40C
	ldr r1, [r7]
	ldr r2, [r4]
	lsls r0, r6, #1
	adds r1, r0, r1
_0806E3FC:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	ldrh r0, [r4, #6]
	cmp r3, r0
	blt _0806E3FC
_0806E40C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
