    .syntax unified
	cmp r0, #0
	bge _0803D5F2
	rsbs r0, r0, #0
_0803D5F2:
	cmp r1, #0
	bge _0803D5F8
	rsbs r1, r1, #0
_0803D5F8:
	cmp r0, r1
	blt _0803D602
	adds r3, r0, #0
	adds r0, r1, #0
	b _0803D604
_0803D602:
	adds r3, r1, #0
_0803D604:
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
	bx lr
	.align 2, 0
    .syntax divided
