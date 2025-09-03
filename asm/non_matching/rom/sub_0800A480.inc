	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005BFC
	ldr r0, _0800A4BC
	ldr r1, _0800A4C0
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #8
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _0800A4C4
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x50
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A4BC: .4byte gSomeBlend
_0800A4C0: .4byte 0x000121BA
_0800A4C4: .4byte 0x00011D9A
	.syntax divided
