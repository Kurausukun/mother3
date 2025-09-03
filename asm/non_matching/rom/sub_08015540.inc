	.syntax unified
	push {r4, r5, lr}
	ldr r5, _0801559C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080155A0
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_0801952C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bhi _080155A8
	ldr r0, _080155A4
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _080155B6
	.align 2, 0
_0801559C: .4byte gSomeBlend
_080155A0: .4byte gUnknown_0200B564
_080155A4: .4byte 0x0001ED10
_080155A8:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080155BC
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_080155B6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080155BC: .4byte 0x0000DFFF
	.syntax divided
