	.syntax unified
sub_0805597C:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bge _08055988
	b _08055AAA
_08055988:
	cmp r5, #6
	ble _080559C0
	cmp r5, #0xc
	ble _08055992
	b _08055AAA
_08055992:
	cmp r5, #0xa
	bge _08055998
	b _08055AAA
_08055998:
	ldr r0, _080559B4
	ldr r1, _080559B8
	adds r6, r0, r1
	ldr r0, [r6]
	ldr r4, _080559BC
	adds r1, r4, #0
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08055A2C
_080559B0:
	movs r0, #1
	b _08055AAC
	.align 2, 0
_080559B4: .4byte gSomeBlend
_080559B8: .4byte 0x00004DF4
_080559BC: .4byte gUnknown_02004EE2
_080559C0:
	movs r4, #0
	ldr r6, _08055A1C
	ldr r0, _08055A20
	adds r7, r6, r0
_080559C8:
	cmp r4, r5
	beq _080559E2
	ldr r1, _08055A24
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r1, r4, #5
	adds r1, r1, r7
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
_080559E2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #6
	bls _080559C8
	movs r4, #0
	ldr r5, _08055A28
_080559F0:
	cmp r4, #0xc
	bgt _08055A0E
	cmp r4, #7
	blt _08055A0E
	adds r0, r4, #0
	bl sub_08054FB8
	adds r1, r0, #0
	ldr r0, [r5]
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
_08055A0E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080559F0
	b _08055AAA
	.align 2, 0
_08055A1C: .4byte gSomeBlend
_08055A20: .4byte 0x00004A32
_08055A24: .4byte 0x00004DF4
_08055A28: .4byte gUnknown_0201AE1C
_08055A2C:
	ldr r0, [r6]
	adds r1, r4, #0
	adds r1, #0x10
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
	ldr r0, [r6]
	adds r1, r4, #0
	adds r1, #0x20
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
	ldr r0, [r6]
	adds r1, r4, #0
	adds r1, #0x32
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
	movs r4, #0
_08055A64:
	cmp r5, #0xa
	beq _08055A76
	cmp r5, #0xa
	blt _08055A8A
	cmp r5, #0xb
	beq _08055A86
	cmp r5, #0xc
	beq _08055A82
	b _08055A8A
_08055A76:
	subs r0, r4, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08055AA0
	b _08055A86
_08055A82:
	cmp r4, #4
	beq _08055AA0
_08055A86:
	cmp r4, #6
	beq _08055AA0
_08055A8A:
	adds r0, r4, #0
	bl sub_08054FB8
	adds r1, r0, #0
	ldr r0, [r6]
	movs r2, #9
	bl sub_080024F0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080559B0
_08055AA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08055A64
_08055AAA:
	movs r0, #0
_08055AAC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
