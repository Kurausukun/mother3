	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r5, _080459F8
	ldr r0, _080459FC
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0xf
	bhi _080459AA
	ldr r0, _08045A00
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080459AA:
	ldrh r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08045A04
	adds r1, r1, r0
	ldr r2, _08045A08
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r4, r1, r0
	ldr r3, _08045A0C
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _080459D0
	b _08045C1A
_080459D0:
	adds r2, #0x1e
	adds r0, r5, r2
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r5, #2
	ldrsh r3, [r4, r5]
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	bl sub_08046D2C
	ldrh r0, [r6]
	cmp r0, #0xf
	bls _080459EE
	b _08045C1A
_080459EE:
	lsls r0, r0, #2
	ldr r1, _08045A10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080459F8: .4byte gSomeBlend
_080459FC: .4byte 0x000041C8
_08045A00: .4byte gUnknown_09B8FCB8
_08045A04: .4byte gUnknown_080C67B8
_08045A08: .4byte 0x000041CA
_08045A0C: .4byte 0x000041DA
_08045A10: .4byte _08045A14
_08045A14:
	.4byte _08045A54
	.4byte _08045A54
	.4byte _08045A54
	.4byte _08045A64
	.4byte _08045C1A
	.4byte _08045A6C
	.4byte _08045AB0
	.4byte _08045ADC
	.4byte _08045ADC
	.4byte _08045B58
	.4byte _08045AB0
	.4byte _08045BB0
	.4byte _08045BB0
	.4byte _08045BCC
	.4byte _08045BCC
	.4byte _08045BF8
_08045A54:
	ldr r0, _08045A5C
	ldr r1, _08045A60
	adds r0, r0, r1
	b _08045B6E
	.align 2, 0
_08045A5C: .4byte gSomeBlend
_08045A60: .4byte 0x000041F2
_08045A64:
	ldr r0, _08045A68
	b _08045A84
	.align 2, 0
_08045A68: .4byte gUnknown_0201A210
_08045A6C:
	ldr r1, _08045AA4
	ldr r2, _08045AA8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x1f
	ble _08045A7A
	b _08045C1A
_08045A7A:
	cmp r0, #0x1c
	bge _08045A80
	b _08045C1A
_08045A80:
	ldr r3, _08045AAC
	adds r0, r1, r3
_08045A84:
	ldrh r2, [r4]
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	subs r3, #8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	bl sub_08046D2C
	b _08045C1A
	.align 2, 0
_08045AA4: .4byte gSomeBlend
_08045AA8: .4byte 0x000041CC
_08045AAC: .4byte 0x000041E8
_08045AB0:
	ldr r0, _08045AD8
	adds r1, r0, #0
	subs r1, #0x1e
	ldrh r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r5, #0xc8
	lsls r5, r5, #0xe
	adds r3, r3, r5
	asrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #8
	bl sub_08046D2C
	b _08045C1A
	.align 2, 0
_08045AD8: .4byte gUnknown_0201A210
_08045ADC:
	ldr r4, _08045B38
	adds r0, r4, #0
	subs r0, #0x1e
	ldrh r0, [r0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0xc8
	lsls r0, r0, #0xe
	adds r3, r3, r0
	asrs r3, r3, #0x10
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08046D2C
	ldr r1, _08045B3C
	adds r0, r4, r1
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	ldr r2, _08045B40
	adds r1, r4, r2
	adds r1, r0, r1
	adds r0, r4, #0
	subs r0, #0x20
	ldrh r0, [r0]
	cmp r0, #7
	beq _08045B44
	ldrb r1, [r1, #2]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _08045B44
	adds r0, r4, #0
	adds r0, #0xc
	str r5, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r2, #8
	movs r3, #0x3e
	bl sub_08046D2C
	b _08045C1A
	.align 2, 0
_08045B38: .4byte gUnknown_0201A210
_08045B3C: .4byte 0xFFFFEC18
_08045B40: .4byte 0xFFFFF298
_08045B44:
	adds r0, r4, #0
	adds r0, #0xc
	str r5, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r2, #8
	movs r3, #0x32
	bl sub_08046D2C
	b _08045C1A
_08045B58:
	ldr r0, _08045B7C
	ldr r3, _08045B80
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08045B8C
	ldr r0, _08045B84
	ldr r5, _08045B88
	adds r0, r0, r5
_08045B6E:
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _08045C1A
	.align 2, 0
_08045B7C: .4byte gUnknown_0200F920
_08045B80: .4byte 0x00006478
_08045B84: .4byte gSomeBlend
_08045B88: .4byte 0x000041F2
_08045B8C:
	ldr r0, _08045BAC
	adds r1, r0, #0
	subs r1, #0x1e
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x14
	movs r1, #0xd0
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	str r3, [sp, #4]
	b _08045BEC
	.align 2, 0
_08045BAC: .4byte gUnknown_0201A210
_08045BB0:
	ldr r0, _08045BC8
	adds r1, r0, #0
	subs r1, #0x1e
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x14
	movs r3, #0xd0
	lsls r3, r3, #0xe
	adds r2, r2, r3
	b _08045BE0
	.align 2, 0
_08045BC8: .4byte gUnknown_0201A210
_08045BCC:
	ldr r0, _08045BF4
	adds r1, r0, #0
	subs r1, #0x1e
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x14
	movs r5, #0xd0
	lsls r5, r5, #0xe
	adds r2, r2, r5
_08045BE0:
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
_08045BEC:
	movs r3, #0x86
	bl sub_08046D2C
	b _08045C1A
	.align 2, 0
_08045BF4: .4byte gUnknown_0201A210
_08045BF8:
	ldr r0, _08045C24
	adds r1, r0, #0
	subs r1, #0x1e
	ldrh r2, [r1]
	movs r1, #0x32
	muls r2, r1, r2
	adds r2, #0x70
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
	movs r3, #0x86
	bl sub_08046D2C
_08045C1A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045C24: .4byte gUnknown_0201A210
	.syntax divided
