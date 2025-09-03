	.syntax unified
sub_080190B8:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r7, #0xf0
	cmp r1, #3
	bne _0801919C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xef
	ble _080190D8
	movs r5, #0
	b _080190E2
_080190D8:
	lsls r0, r1, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080190E2:
	movs r2, #0x50
	ldr r3, _080190FC
_080190E6:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019100
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r5, [r0]
	b _08019106
	.align 2, 0
_080190FC: .4byte gUnknown_02029238
_08019100:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r7, [r0]
_08019106:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08019124
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _08019124
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08019124:
	lsls r0, r2, #0x10
	ldr r1, _0801913C
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080190E6
	lsrs r4, r6, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0xef
	ble _08019140
	movs r5, #0
	b _0801914A
	.align 2, 0
_0801913C: .4byte 0xFFFF0000
_08019140:
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801914A:
	movs r2, #0x50
	ldr r6, _08019164
_0801914E:
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _08019168
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r5, [r0]
	b _0801916E
	.align 2, 0
_08019164: .4byte gUnknown_02029238
_08019168:
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r7, [r0]
_0801916E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0801918C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0801918C
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801918C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0801914E
	b _0801926C
_0801919C:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xef
	ble _080191AC
	movs r5, #0
	b _080191B4
_080191AC:
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080191B4:
	movs r2, #0x50
	ldr r3, _080191D0
_080191B8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080191D4
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	b _080191DA
	.align 2, 0
_080191D0: .4byte gUnknown_02029238
_080191D4:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r5, [r0]
_080191DA:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080191F6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xef
	bgt _080191F6
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080191F6:
	lsls r0, r2, #0x10
	ldr r1, _08019210
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080191B8
	lsrs r4, r6, #0x10
	asrs r1, r6, #0x10
	cmp r1, #0xef
	ble _08019214
	movs r5, #0
	b _0801921C
	.align 2, 0
_08019210: .4byte 0xFFFF0000
_08019214:
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801921C:
	movs r2, #0x50
	ldr r6, _08019238
_08019220:
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0801923C
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0]
	b _08019242
	.align 2, 0
_08019238: .4byte gUnknown_02029238
_0801923C:
	lsls r0, r2, #1
	adds r0, r0, r6
	strh r5, [r0]
_08019242:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0801925E
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xef
	bgt _0801925E
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801925E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08019220
_0801926C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
