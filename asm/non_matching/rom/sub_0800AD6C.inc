	.syntax unified
sub_0800AD6C:
	ldr r2, _0800ADA0
	ldr r0, _0800ADA4
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _0800ADA8
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0800ADAC
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0800ADB0
	strh r3, [r0]
	ldr r1, _0800ADB4
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0800ADB8
	strh r3, [r0]
	bx lr
	.align 2, 0
_0800ADA0: .4byte gGame
_0800ADA4: .4byte 0x00009486
_0800ADA8: .4byte 0x00009484
_0800ADAC: .4byte 0x00009485
_0800ADB0: .4byte gUnknown_03004B04
_0800ADB4: .4byte gUnknown_03004B06
_0800ADB8: .4byte gUnknown_03004B08
	.syntax divided
