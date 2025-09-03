	.syntax unified
	ldr r2, _0800A3E0
	ldr r0, _0800A3E4
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r3]
	ldr r0, _0800A3E8
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0800A3E0: .4byte gSomeBlend
_0800A3E4: .4byte 0x00011D16
_0800A3E8: .4byte 0x0001ED10
	.syntax divided
