	.syntax unified
sub_0804C1E8:
	ldr r2, _0804C218
	ldr r0, _0804C21C
	adds r1, r2, r0
	movs r3, #0
	movs r0, #8
	strb r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #6
	adds r1, r2, r0
	strh r3, [r1, #0xa]
	movs r0, #3
	strh r0, [r1, #2]
	ldr r0, _0804C220
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804C224
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0804C218: .4byte gSomeBlend
_0804C21C: .4byte 0x00004260
_0804C220: .4byte 0x000044F2
_0804C224: .4byte 0x00004263
	.syntax divided
