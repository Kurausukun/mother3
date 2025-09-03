	.syntax unified
sub_08054108:
	ldr r1, _08054124
	movs r2, #0x8a
	lsls r2, r2, #7
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, _08054128
	adds r0, r1, r3
	str r2, [r0]
	ldr r0, _0805412C
	adds r1, r1, r0
	str r2, [r1]
	bx lr
	.align 2, 0
_08054124: .4byte gSomeBlend
_08054128: .4byte 0x000044F8
_0805412C: .4byte 0x000044FC
	.syntax divided
