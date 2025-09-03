	.syntax unified
sub_0803E3D8:
	push {lr}
	bl snd_main
	ldr r1, _0803E3E8
	movs r0, #4
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803E3E8: .4byte 0x04000202
	.syntax divided
