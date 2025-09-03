	.syntax unified
sub_08051080:
	lsls r1, r1, #4
	strh r1, [r0]
	lsls r2, r2, #4
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	.syntax divided
