	.syntax unified
sub_0804C3E0:
	ldr r1, _0804C3FC
	ldr r0, _0804C400
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0x10
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	ldr r0, _0804C404
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	strh r3, [r1, #0xa]
	bx lr
	.align 2, 0
_0804C3FC: .4byte gSomeBlend
_0804C400: .4byte 0x00004260
_0804C404: .4byte gUnknown_020050C0
	.syntax divided
