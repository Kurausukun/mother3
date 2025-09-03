	.syntax unified
sub_08039EC8:
	ldr r3, _08039EF4
	ldr r1, _08039EF8
	adds r2, r3, r1
	movs r1, #0
	strh r1, [r2]
	strh r1, [r0, #4]
	strh r1, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039EFC
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	bx lr
	.align 2, 0
_08039EF4: .4byte gSomeBlend
_08039EF8: .4byte 0x00003612
_08039EFC: .4byte 0x0000360E
	.syntax divided
