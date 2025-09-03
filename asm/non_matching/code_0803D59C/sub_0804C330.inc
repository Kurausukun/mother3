	.syntax unified
sub_0804C330:
	ldr r1, _0804C34C
	ldr r0, _0804C350
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0xd
	strb r0, [r2]
	ldr r0, _0804C354
	adds r2, r1, r0
	strh r3, [r2, #0xa]
	ldr r0, _0804C358
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0804C34C: .4byte gSomeBlend
_0804C350: .4byte 0x00004260
_0804C354: .4byte 0x00002FA0
_0804C358: .4byte 0x00002DFC
	.syntax divided
