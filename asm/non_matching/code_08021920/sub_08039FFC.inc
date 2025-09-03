	.syntax unified
	push {r4, lr}
	ldr r3, _0803A030
	ldr r1, _0803A034
	adds r4, r3, r1
	movs r2, #0
	movs r1, #5
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #2
	strh r1, [r0, #2]
	ldr r0, _0803A038
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
_0803A030: .4byte gSomeBlend
_0803A034: .4byte 0x00003612
_0803A038: .4byte 0x0000360E
	.syntax divided
