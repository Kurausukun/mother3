	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0xc4
	b _0802DDB2
_0802DDAA:
	ldr r0, _0802DE50
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802DE4A
_0802DDB2:
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	adds r1, #0xc5
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	bl sub_08027DC4
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1a
	bl sub_08027DE4
	adds r3, r0, #0
	ldr r1, _0802DE50
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802DE2C
	ldr r2, _0802DE54
	ldrh r0, [r3]
	lsls r1, r0, #0x17
	lsrs r0, r1, #0x18
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802DE2C
	lsrs r0, r1, #0x18
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r3, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DE2C
	ldr r2, [r4]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x1a
	adds r1, #1
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r0, _0802DE58
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r6, #0x2c]
	stm r1!, {r0}
	str r0, [r1]
_0802DE2C:
	ldr r0, [r4]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1a
	ldrb r5, [r5]
	cmp r0, r5
	blt _0802DDAA
	ldrb r0, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r2, #1
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4]
_0802DE4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DE50: .4byte gObjectContinue
_0802DE54: .4byte gUnknown_08D2DF64
_0802DE58: .4byte 0xFFE07FFF
	.syntax divided
