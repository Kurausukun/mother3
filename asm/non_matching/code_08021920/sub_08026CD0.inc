	.syntax unified
sub_08026CD0:
	ldr r0, _08026CDC
	ldr r1, _08026CE0
	adds r0, r0, r1
	movs r1, #3
	str r1, [r0]
	bx lr
	.align 2, 0
_08026CDC: .4byte gGame
_08026CE0: .4byte 0x00008490
	.syntax divided
