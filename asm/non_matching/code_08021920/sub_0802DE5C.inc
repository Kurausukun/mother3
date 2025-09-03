	.syntax unified
sub_0802DE5C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0xc6
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	movs r4, #0
	adds r5, r0, #0
_0802DE70:
	ldr r0, _0802DE9C
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802DEA0
	adds r0, r6, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sub_08027DC4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DEA0
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	b _0802DEAA
	.align 2, 0
_0802DE9C: .4byte gUnknown_08D2DF14
_0802DEA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	bls _0802DE70
_0802DEAA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
