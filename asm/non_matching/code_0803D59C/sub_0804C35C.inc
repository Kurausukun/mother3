	.syntax unified
sub_0804C35C:
	push {lr}
	ldr r2, _0804C38C
	ldr r0, _0804C390
	adds r1, r2, r0
	movs r3, #0
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0xbf
	lsls r0, r0, #6
	adds r1, r2, r0
	strh r3, [r1, #4]
	ldr r0, _0804C394
	adds r2, r2, r0
	ldrb r0, [r2]
	strh r0, [r1, #0xa]
	strh r3, [r1, #8]
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	bl sub_08053148
	pop {r0}
	bx r0
	.align 2, 0
_0804C38C: .4byte gSomeBlend
_0804C390: .4byte 0x00004260
_0804C394: .4byte 0x00004264
	.syntax divided
