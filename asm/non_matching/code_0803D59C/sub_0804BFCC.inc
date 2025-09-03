	.syntax unified
	push {r4, r5, lr}
	ldr r4, _0804BFF4
	ldr r0, _0804BFF8
	adds r1, r4, r0
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	ldr r0, _0804BFFC
	adds r5, r4, r0
	strh r2, [r5, #0xa]
	bl sub_08052A64
	ldr r0, _0804C000
	adds r4, r4, r0
	ldrh r0, [r4]
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BFF4: .4byte gSomeBlend
_0804BFF8: .4byte 0x00004260
_0804BFFC: .4byte 0x00002EA0
_0804C000: .4byte 0x0000427E
	.syntax divided
