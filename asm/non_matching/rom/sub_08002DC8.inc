	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bge _08002DD2
	rsbs r4, r4, #0
_08002DD2:
	cmp r1, #0
	bge _08002DD8
	rsbs r1, r1, #0
_08002DD8:
	cmp r4, r1
	bge _08002DE2
	adds r0, r4, #0
	adds r4, r1, #0
	adds r1, r0, #0
_08002DE2:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r4, #0
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r0, r4, r0
	asrs r0, r0, #7
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
