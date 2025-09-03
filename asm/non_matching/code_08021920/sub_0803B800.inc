	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0x13
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _0803B84C
	ldr r2, [r0, #8]
	cmp r2, r0
	beq _0803B856
	movs r6, #1
_0803B816:
	ldrb r5, [r2, #5]
	cmp r5, #0
	bne _0803B850
	ldr r1, [r2]
	cmp r1, r4
	blo _0803B850
	subs r3, r1, r4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	bls _0803B844
	adds r1, r2, r4
	str r3, [r1]
	movs r0, #0xa5
	strb r0, [r1, #4]
	strb r5, [r1, #5]
	ldr r0, [r2, #8]
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	str r0, [r1, #8]
	str r1, [r2, #8]
	str r2, [r1, #0xc]
	str r4, [r2]
_0803B844:
	strb r6, [r2, #5]
	adds r0, r2, #0
	adds r0, #0x10
	b _0803B858
	.align 2, 0
_0803B84C: .4byte gUnknown_02001030
_0803B850:
	ldr r2, [r2, #8]
	cmp r2, r0
	bne _0803B816
_0803B856:
	movs r0, #0
_0803B858:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
