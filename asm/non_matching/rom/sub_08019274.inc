	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0xf0
	cmp r1, #5
	bne _080192CE
	ldr r2, _0801929C
	movs r1, #0
	cmp r1, r3
	bge _080192B4
	movs r6, #1
	movs r5, #0
_08019290:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080192A0
	strh r5, [r2]
	b _080192A2
	.align 2, 0
_0801929C: .4byte gUnknown_02029376
_080192A0:
	strh r4, [r2]
_080192A2:
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r2, #2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _08019290
_080192B4:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0801931A
_080192BC:
	strh r4, [r2]
	subs r2, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _080192BC
	b _0801931A
_080192CE:
	ldr r2, _080192E8
	movs r1, #0
	cmp r1, r3
	bge _08019300
	movs r6, #1
	movs r5, #0
_080192DA:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080192EC
	strh r5, [r2]
	b _080192EE
	.align 2, 0
_080192E8: .4byte gUnknown_02029376
_080192EC:
	strh r4, [r2]
_080192EE:
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r2, #2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _080192DA
_08019300:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0801931A
	movs r3, #0
_0801930A:
	strh r3, [r2]
	subs r2, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _0801930A
_0801931A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
