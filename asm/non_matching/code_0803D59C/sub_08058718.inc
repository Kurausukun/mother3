	.syntax unified
	ldr r1, _08058748
	ldr r0, _0805874C
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r3, _08058750
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08058754
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08058758
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08058748: .4byte gSomeBlend
_0805874C: .4byte 0x0000328C
_08058750: .4byte 0x04000208
_08058754: .4byte 0x04000200
_08058758: .4byte 0x04000004
	.syntax divided
