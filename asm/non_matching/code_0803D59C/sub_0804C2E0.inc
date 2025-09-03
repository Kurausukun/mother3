	.syntax unified
	ldr r2, _0804C31C
	ldr r0, _0804C320
	adds r1, r2, r0
	movs r3, #0
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0xbe
	lsls r0, r0, #6
	adds r1, r2, r0
	strh r3, [r1, #0xa]
	movs r0, #3
	strh r0, [r1, #2]
	ldr r0, _0804C324
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804C328
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804C32C
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0804C31C: .4byte gSomeBlend
_0804C320: .4byte 0x00004260
_0804C324: .4byte 0x0000C5B5
_0804C328: .4byte 0x000044F2
_0804C32C: .4byte 0x00004263
	.syntax divided
