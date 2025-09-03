	.syntax unified
get_char_stats:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802B86C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	ldr r1, _0802B870
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802B86C: .4byte gSave
_0802B870: .4byte gCharStats
	.syntax divided
