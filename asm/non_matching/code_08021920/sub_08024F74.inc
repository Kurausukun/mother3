	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08025030
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _08025034
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	movs r5, #0
	movs r2, #0
	movs r4, #1
	movs r3, #0xa0
_08024FCA:
	strh r4, [r1]
	strh r3, [r1, #4]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #0x14
	cmp r5, #0x4f
	bls _08024FCA
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r4, r6, r1
	movs r5, #0
	movs r2, #2
	rsbs r2, r2, #0
	adds r7, r2, #0
_08024FEE:
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r7
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x34
	cmp r5, #0xa
	bls _08024FEE
	movs r5, #0
	ldr r0, _08025038
	adds r2, r6, r0
	movs r1, #0
_08025018:
	lsls r0, r5, #2
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x63
	bls _08025018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025030: .4byte 0x00000882
_08025034: .4byte 0x00000A2C
_08025038: .4byte 0x0000089C
	.syntax divided
