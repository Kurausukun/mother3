	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803A058
	ldr r1, _0803A05C
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803A060
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	b _0803A072
	.align 2, 0
_0803A058: .4byte gSomeBlend
_0803A05C: .4byte 0x00003668
_0803A060:
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0803A072:
	ldr r3, _0803A0C0
	ldr r5, _0803A0C4
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A0A6
	ldr r0, _0803A0C8
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #5
	bhi _0803A0A6
	ldr r1, _0803A0CC
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r5, #0xac
	adds r0, r3, r5
	adds r1, r1, r0
	ldr r2, [r2]
	adds r0, r4, #0
	bl _call_via_r2
_0803A0A6:
	ldr r0, _0803A0C0
	ldr r1, _0803A0C4
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803A0D0
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0803A0E4
	.align 2, 0
_0803A0C0: .4byte gSomeBlend
_0803A0C4: .4byte 0x00003668
_0803A0C8: .4byte 0x00003612
_0803A0CC: .4byte gUnknown_08D2E190
_0803A0D0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803A0E4
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0803B278
_0803A0E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
