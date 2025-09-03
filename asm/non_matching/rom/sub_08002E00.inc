	.syntax unified
	push {lr}
	cmp r0, #0
	bge _08002E08
	rsbs r0, r0, #0
_08002E08:
	cmp r1, #0
	bge _08002E0E
	rsbs r1, r1, #0
_08002E0E:
	cmp r0, r1
	blt _08002E18
	adds r3, r0, #0
	adds r0, r1, #0
	b _08002E1A
_08002E18:
	adds r3, r1, #0
_08002E1A:
	lsrs r2, r0, #1
	adds r2, r0, r2
	lsrs r0, r3, #5
	subs r0, r3, r0
	lsrs r1, r3, #7
	subs r0, r0, r1
	lsrs r1, r2, #2
	adds r0, r0, r1
	lsrs r2, r2, #6
	adds r0, r0, r2
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
