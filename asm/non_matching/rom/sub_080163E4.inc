	.syntax unified
sub_080163E4:
	push {r4, r5, lr}
	ldr r5, _08016448
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _0801644C
	ldrh r1, [r4, #4]
	ldrh r2, [r4, #8]
	adds r0, r4, #0
	bl sub_0801965C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0xf0
	movs r1, #0
	bl sub_08002E60
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #8]
	adds r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	strh r1, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016454
	ldr r0, _08016450
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08016456
	.align 2, 0
_08016448: .4byte gSomeBlend
_0801644C: .4byte gUnknown_0200B564
_08016450: .4byte 0x0001ED10
_08016454:
	movs r0, #1
_08016456:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
