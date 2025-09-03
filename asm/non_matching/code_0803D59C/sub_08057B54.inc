	.syntax unified
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r4, _08057BC8
	ldr r1, _08057BCC
	adds r5, r4, r1
	ldrb r1, [r5]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _08057BD0
	adds r3, r4, r2
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	strb r1, [r3]
	ldr r2, _08057BD4
	adds r1, r4, r2
	movs r3, #0
	strb r3, [r1]
	adds r2, #1
	adds r1, r4, r2
	strb r3, [r1]
	adds r2, #1
	adds r1, r4, r2
	strh r3, [r1]
	adds r2, #2
	adds r1, r4, r2
	strh r3, [r1]
	adds r2, #4
	adds r1, r4, r2
	movs r2, #2
	str r2, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0x78
	bl sub_080031F0
	adds r0, r5, #0
	bl sub_08056CC0
	ldr r0, _08057BD8
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x3a
	bl sub_080038A4
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057BC8: .4byte gSomeBlend
_08057BCC: .4byte 0x00002CB0
_08057BD0: .4byte 0x00002CFA
_08057BD4: .4byte 0x00002CF4
_08057BD8: .4byte 0x00002CB1
	.syntax divided
