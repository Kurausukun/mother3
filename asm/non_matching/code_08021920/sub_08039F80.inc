	.syntax unified
	push {r4, lr}
	ldr r2, _08039FB0
	ldr r1, _08039FB4
	adds r4, r2, r1
	movs r1, #0
	movs r3, #3
	strh r3, [r4]
	strh r1, [r0, #4]
	strh r1, [r0, #0xa]
	strh r3, [r0, #2]
	ldr r0, _08039FB8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FB0: .4byte gSomeBlend
_08039FB4: .4byte 0x00003612
_08039FB8: .4byte 0x0000360E
	.syntax divided
