	.syntax unified
	push {r4, lr}
	ldr r2, _0804C3D0
	ldr r0, _0804C3D4
	adds r1, r2, r0
	movs r3, #0
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0804C3D8
	adds r1, r2, r0
	strh r3, [r1, #4]
	ldr r0, _0804C3DC
	adds r2, r2, r0
	ldrb r0, [r2]
	strh r0, [r1, #0xa]
	strh r3, [r1, #8]
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_080524EC
	adds r0, r4, #0
	bl sub_080531C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C3D0: .4byte gSomeBlend
_0804C3D4: .4byte 0x00004260
_0804C3D8: .4byte 0x00002FE0
_0804C3DC: .4byte 0x00004264
	.syntax divided
