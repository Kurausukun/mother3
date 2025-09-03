	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B520
	adds r2, r0, #0
	ldr r3, _080123C4
	movs r4, #0
	b _080123F8
	.align 2, 0
_080123C4: .4byte gUnknown_0200BBE0
_080123C8:
	ldrb r0, [r3, #0xc]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	str r2, [r3]
	adds r0, r2, #0
	adds r0, #0x30
	str r0, [r3, #8]
	adds r1, r2, #0
	adds r1, #0xc
	str r1, [r3, #4]
	ldrb r0, [r2, #8]
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [r3, #8]
	ldrb r0, [r2, #9]
	lsls r0, r0, #2
	adds r2, r1, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x10
	cmp r4, #0x18
	bhi _08012400
_080123F8:
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080123C8
_08012400:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
