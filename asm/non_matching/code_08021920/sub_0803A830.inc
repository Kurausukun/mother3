	.syntax unified
sub_0803A830:
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #0
	blt _0803A840
	cmp r2, #1
	bgt _0803A840
	bl sub_0803A844
_0803A840:
	pop {r0}
	bx r0
	.syntax divided
