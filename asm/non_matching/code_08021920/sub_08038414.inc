	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	beq _0803842C
	cmp r0, #1
	ble _08038472
	cmp r0, #2
	beq _08038450
	b _08038472
_0803842C:
	ldrh r2, [r4, #8]
	movs r0, #0x18
	movs r1, #0
	movs r3, #0xc
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _08038472
	movs r0, #0
	strh r0, [r4, #0xa]
	b _08038472
_08038450:
	ldrh r2, [r4, #8]
	movs r0, #0
	movs r1, #0x18
	movs r3, #0xc
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _08038472
	bl sub_080377D0
_08038472:
	ldr r1, _080384CC
	ldrh r0, [r1, #0x1a]
	strh r6, [r1, #0x1a]
	ldr r2, _080384D0
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08038534
	ldrh r4, [r4, #4]
	ldr r0, _080384D4
	ldr r2, _080384D8
	adds r1, r0, r2
	ldrb r1, [r1]
	lsrs r1, r1, #7
	adds r3, r4, #0
	adds r7, r0, #0
	cmp r1, #0
	bne _080384A6
	cmp r4, #1
	bls _080384A6
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080384A6:
	ldr r0, _080384DC
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080384E0
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _080384D8
	adds r0, r7, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080384E8
	lsls r1, r3, #2
	ldr r0, _080384E4
	b _080384EC
	.align 2, 0
_080384CC: .4byte gSomeBlend
_080384D0: .4byte 0x000035BA
_080384D4: .4byte gGame
_080384D8: .4byte 0x000082B8
_080384DC: .4byte 0x000121B9
_080384E0: .4byte 0x000121C3
_080384E4: .4byte gUnknown_080C20B0
_080384E8:
	lsls r1, r3, #2
	ldr r0, _0803853C
_080384EC:
	adds r2, r1, r0
	ldr r1, _08038540
	ldrh r0, [r2]
	movs r5, #0
	strh r0, [r1]
	ldrh r0, [r2, #2]
	subs r0, r0, r6
	strh r0, [r1, #2]
	adds r0, r4, #0
	adds r0, #0x23
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08039B24
	ldr r2, _08038544
	lsls r1, r4, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r2, #7
	subs r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #7
	str r4, [sp]
	str r5, [sp, #4]
	bl draw_ui_text
	movs r1, #4
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x8c
	bl sub_08038A40
_08038534:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803853C: .4byte gUnknown_080C20C4
_08038540: .4byte gUnknown_0201953C
_08038544: .4byte gUnknown_080C20E8
	.syntax divided
