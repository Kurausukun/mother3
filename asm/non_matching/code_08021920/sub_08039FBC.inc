	.syntax unified
sub_08039FBC:
	push {r4, lr}
	ldr r3, _08039FF0
	ldr r1, _08039FF4
	adds r4, r3, r1
	movs r2, #0
	movs r1, #4
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039FF8
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FF0: .4byte gSomeBlend
_08039FF4: .4byte 0x00003612
_08039FF8: .4byte 0x0000360E
	.syntax divided
