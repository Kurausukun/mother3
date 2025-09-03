	.syntax unified
sub_08042838:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _08042850
	ldrb r0, [r0]
	cmp r0, #5
	bne _08042854
	bl sub_0804BB28
	b _08042858
	.align 2, 0
_08042850: .4byte gUnknown_0200F920
_08042854:
	bl sub_0804AB00
_08042858:
	ldr r6, _0804286C
	ldr r0, _08042870
	adds r3, r6, r0
	ldrb r0, [r3]
	cmp r0, #8
	bne _08042874
	adds r0, r7, #0
	bl sub_08042B88
	b _08042A4E
	.align 2, 0
_0804286C: .4byte gSomeBlend
_08042870: .4byte 0x00004A30
_08042874:
	cmp r0, #9
	bne _0804288E
	movs r1, #0x8a
	lsls r1, r1, #7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08042886
	b _08042A4E
_08042886:
	adds r0, r7, #0
	bl sub_08042D48
	b _08042A4E
_0804288E:
	ldr r2, _080428EC
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804289E
	b _08042A4E
_0804289E:
	ldr r0, _080428F0
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080428FC
	subs r0, #1
	strh r0, [r1]
	ldr r2, _080428F4
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldr r1, _080428F8
	adds r0, r6, r1
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #3
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_08046D2C
	b _08042A4E
	.align 2, 0
_080428EC: .4byte 0x00004501
_080428F0: .4byte 0x00004ECC
_080428F4: .4byte gUnknown_080C69CC
_080428F8: .4byte 0x000041E8
_080428FC:
	ldrb r0, [r3]
	cmp r0, #0xe
	bne _08042924
	movs r4, #0x5e
	ldr r2, _08042920
	adds r0, r6, r2
	ldr r0, [r0]
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x5e
	movs r2, #6
	movs r3, #0x10
	bl sub_08047CDC
	b _0804293E
	.align 2, 0
_08042920: .4byte 0x00004DF4
_08042924:
	movs r4, #0x7c
	ldr r1, _080429AC
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x7c
	movs r2, #6
	movs r3, #9
	bl sub_08047CDC
_0804293E:
	movs r0, #1
	bl sub_08047E04
	adds r0, r4, #0
	ldr r4, _080429B0
	ldr r2, _080429B4
	adds r1, r4, r2
	ldrh r3, [r1]
	movs r1, #6
	movs r2, #8
	bl sub_080458B8
	ldr r2, _080429B8
	ldr r1, _080429BC
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r2, #1
	mov r8, r2
	str r2, [sp, #4]
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldrh r6, [r7, #4]
	ldr r0, _080429C0
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08042A28
	adds r0, r6, #0
	movs r1, #0xf
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bne _080429C8
	ldr r4, _080429C4
	b _080429CA
	.align 2, 0
_080429AC: .4byte 0x00004DF4
_080429B0: .4byte gSomeBlend
_080429B4: .4byte 0x00004ECA
_080429B8: .4byte gUnknown_080C69CC
_080429BC: .4byte 0x00004A30
_080429C0: .4byte 0x00004ECF
_080429C4: .4byte gUnknown_080C6ACA
_080429C8:
	ldr r4, _08042A14
_080429CA:
	adds r0, r6, #0
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _08042A18
	ands r5, r0
	orrs r5, r1
	ldr r4, _08042A1C
	adds r0, r6, #0
	movs r1, #0xf
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, _08042A20
	ands r5, r1
	orrs r5, r0
	ldr r0, _08042A24
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	asrs r3, r5, #0x10
	movs r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #3
	bl sub_08046D2C
	b _08042A4E
	.align 2, 0
_08042A14: .4byte gUnknown_080C6AAC
_08042A18: .4byte 0xFFFF0000
_08042A1C: .4byte gUnknown_080C6AE8
_08042A20: .4byte 0x0000FFFF
_08042A24: .4byte gUnknown_0201A210
_08042A28:
	ldr r0, _08042A5C
	ldr r3, _08042A60
	ldr r1, _08042A64
	ldr r2, _08042A68
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x28
	mov r1, r8
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0x20
	bl sub_08046A28
_08042A4E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042A5C: .4byte gUnknown_080C660C
_08042A60: .4byte gUnknown_080C6984
_08042A64: .4byte gUnknown_0200F920
_08042A68: .4byte 0x00006474
	.syntax divided
