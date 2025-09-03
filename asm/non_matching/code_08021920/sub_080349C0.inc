	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xca
	ldrb r2, [r4]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	adds r2, #0xc
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	strh r1, [r3, #6]
	adds r0, r3, #0
	adds r0, #0xb2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r4, #0x45
	ldrb r0, [r4]
	bl sub_08033414
	ldrb r0, [r4]
	movs r1, #0xf
	bl sub_08033620
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
