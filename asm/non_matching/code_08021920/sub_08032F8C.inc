	.syntax unified
	ldr r2, _08032FAC
	ldr r1, _08032FB0
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08032FB4
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _08032FB8
	adds r2, r2, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08032FAC: .4byte gSomeBlend
_08032FB0: .4byte 0x00002C9A
_08032FB4: .4byte 0x000121B0
_08032FB8: .4byte 0x000121B4
	.syntax divided
