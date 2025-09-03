	.syntax unified
	push {lr}
	bl snd_vsync
	ldr r2, _0805A47C
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0805A480
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0805A47C: .4byte 0x04000208
_0805A480: .4byte gUnknown_03007FF8
	.syntax divided
