	.syntax unified
sub_080355AC:
	push {lr}
	bl sub_080031E0
	movs r1, #0x1f
	ands r1, r0
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
