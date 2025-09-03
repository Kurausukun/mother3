	.syntax unified
sub_08024510:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r3, _08024548
	movs r4, #0
	movs r7, #1
	movs r6, #2
	rsbs r6, r6, #0
_0802451E:
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08024536
	cmp r3, r5
	bne _08024536
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
_08024536:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x34
	cmp r4, #0xa
	bls _0802451E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024548: .4byte gUnknown_0201B184
	.syntax divided
