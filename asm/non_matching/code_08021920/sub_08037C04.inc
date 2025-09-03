	.syntax unified
sub_08037C04:
	push {r4, r5, lr}
	ldr r2, _08037C44
	ldr r1, _08037C48
	adds r3, r2, r1
	movs r4, #0
	movs r5, #1
	movs r1, #1
	strb r1, [r3]
	strh r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r0, _08037C4C
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08037C50
	adds r2, r2, r1
	ldrb r0, [r2]
	orrs r0, r5
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037C44: .4byte gSomeBlend
_08037C48: .4byte 0x00003530
_08037C4C: .4byte 0x000035BA
_08037C50: .4byte 0x0000351A
	.syntax divided
