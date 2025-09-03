	.syntax unified
	push {lr}
	ldr r2, _0804C2D0
	ldr r0, _0804C2D4
	adds r1, r2, r0
	movs r3, #0
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, _0804C2D8
	adds r1, r2, r0
	strh r3, [r1, #4]
	ldr r0, _0804C2DC
	adds r2, r2, r0
	ldrb r0, [r2]
	strh r0, [r1, #0xa]
	strh r3, [r1, #8]
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	bl sub_08052FC8
	pop {r0}
	bx r0
	.align 2, 0
_0804C2D0: .4byte gSomeBlend
_0804C2D4: .4byte 0x00004260
_0804C2D8: .4byte 0x00002F60
_0804C2DC: .4byte 0x00004264
	.syntax divided
