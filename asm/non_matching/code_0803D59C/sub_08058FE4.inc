	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	beq _0805900C
	cmp r0, #0xc
	beq _08059044
	movs r0, #0
	bl sub_08036DDC
	adds r1, r0, #0
	ldr r0, _08059008
	movs r2, #0x10
	movs r3, #0xe0
	bl sub_0800160C
	b _0805907E
	.align 2, 0
_08059008: .4byte gUnknown_02016078
_0805900C:
	ldr r4, _0805903C
	adds r0, r4, #0
	movs r1, #0x48
	bl sub_0800289C
	adds r1, r0, #0
	ldr r5, _08059040
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0x80
	bl sub_0800160C
	adds r0, r4, #0
	movs r1, #0x49
	bl sub_0800289C
	adds r1, r0, #0
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_0800160C
	b _08059072
	.align 2, 0
_0805903C: .4byte gUnknown_09C5FD2C
_08059040: .4byte gUnknown_02016078
_08059044:
	ldr r4, _08059084
	adds r0, r4, #0
	movs r1, #0x4a
	bl sub_0800289C
	adds r1, r0, #0
	ldr r5, _08059088
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0x80
	bl sub_0800160C
	adds r0, r4, #0
	movs r1, #0x4b
	bl sub_0800289C
	adds r1, r0, #0
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_0800160C
_08059072:
	ldr r0, _0805908C
	ldr r1, _08059090
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
_0805907E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059084: .4byte gUnknown_09C5FD2C
_08059088: .4byte gUnknown_02016078
_0805908C: .4byte gSomeBlend
_08059090: .4byte 0x00002750
	.syntax divided
