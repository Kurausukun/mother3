	.syntax unified
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #2
	bgt _0803AAA8
	cmp r2, #0
	blt _0803AAA8
	bl sub_0803AAAC
_0803AAA8:
	pop {r0}
	bx r0
	.syntax divided
