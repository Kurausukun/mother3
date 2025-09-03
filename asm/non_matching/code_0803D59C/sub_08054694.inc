	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08054640
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080546A8
	movs r0, #1
	b _080546AA
_080546A8:
	movs r0, #0
_080546AA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
