	.syntax unified
sub_0800A354:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005BFC
	ldr r0, _0800A3A4
	ldr r1, _0800A3A8
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _0800A3AC
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #2
	ands r1, r2
	strb r1, [r3]
	ldr r1, _0800A3B0
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
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
_0800A3A4: .4byte gSomeBlend
_0800A3A8: .4byte 0x000121B9
_0800A3AC: .4byte 0x00011D16
_0800A3B0: .4byte 0x0001ED10
	.syntax divided
