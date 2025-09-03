	.syntax unified
sub_0806E418:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r5, #4]
	cmp r0, r4
	bge _0806E44E
	lsls r0, r0, #1
	cmp r0, r4
	bge _0806E42C
	adds r0, r4, #0
_0806E42C:
	adds r4, r0, #0
	ldr r6, [r5]
	lsls r0, r4, #1
	bl __builtin_vec_new
	str r0, [r5]
	strh r4, [r5, #4]
	ldrh r2, [r5, #6]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806E454
	cmp r6, #0
	beq _0806E44E
	adds r0, r6, #0
	bl __builtin_vec_delete
_0806E44E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
