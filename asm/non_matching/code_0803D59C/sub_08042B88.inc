	.syntax unified
sub_08042B88:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x26
	bl sub_080486A0
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #0xf
	str r4, [sp]
	movs r7, #1
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0xa
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	movs r0, #0x27
	bl sub_080486A0
	str r4, [sp]
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0x18
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	movs r0, #5
	bl sub_080486A0
	str r4, [sp]
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0x26
	adds r3, r5, #0
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldr r1, _08042C08
	ldr r0, _08042C0C
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _08042C14
	subs r0, #1
	strh r0, [r2]
	ldr r2, _08042C10
	adds r0, r1, r2
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_08046D2C
	b _08042D32
	.align 2, 0
_08042C08: .4byte gSomeBlend
_08042C0C: .4byte 0x00004ECC
_08042C10: .4byte 0x000041E8
_08042C14:
	ldrh r0, [r6, #0xa]
	cmp r0, #1
	beq _08042C8C
	cmp r0, #1
	bgt _08042C24
	cmp r0, #0
	beq _08042C2A
	b _08042D32
_08042C24:
	cmp r0, #2
	beq _08042CE8
	b _08042D32
_08042C2A:
	ldr r2, _08042C7C
	adds r0, r1, r2
	ldrh r1, [r6, #4]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #0x11
	movs r1, #0x90
	lsls r1, r1, #0xc
	adds r3, r3, r1
	asrs r3, r3, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r2, #0x80
	bl sub_08046D2C
	ldr r6, _08042C80
	ldr r4, _08042C84
	movs r2, #0x90
	lsls r2, r2, #3
	adds r0, r4, r2
	ldrb r0, [r0]
	movs r5, #0xd
	adds r2, r0, #0
	muls r2, r5, r2
	adds r2, #0x3d
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r3, #0x20
	bl sub_08046A28
	ldr r0, _08042C88
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r2, #0x3d
	str r7, [sp]
	adds r0, r6, #0
	b _08042CCC
	.align 2, 0
_08042C7C: .4byte 0x000041E8
_08042C80: .4byte gUnknown_080C6288
_08042C84: .4byte gSave
_08042C88: .4byte 0x0000081E
_08042C8C:
	ldr r2, _08042CD8
	adds r0, r1, r2
	ldrh r1, [r6, #4]
	movs r5, #0xd
	adds r3, r1, #0
	muls r3, r5, r3
	adds r3, #0x3d
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r2, #4
	bl sub_08046D2C
	ldr r4, _08042CDC
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #9
	movs r3, #0x20
	bl sub_08046A28
	ldr r0, _08042CE0
	ldr r1, _08042CE4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r2, #0x3d
	str r7, [sp]
	adds r0, r4, #0
_08042CCC:
	movs r1, #0x74
	movs r3, #0x20
	bl sub_08046A28
	b _08042D32
	.align 2, 0
_08042CD8: .4byte 0x000041E8
_08042CDC: .4byte gUnknown_080C6288
_08042CE0: .4byte gSave
_08042CE4: .4byte 0x0000081E
_08042CE8:
	ldr r2, _08042D3C
	adds r0, r1, r2
	ldrh r1, [r6, #4]
	movs r5, #0xd
	adds r3, r1, #0
	muls r3, r5, r3
	adds r3, #0x3d
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r2, #0x74
	bl sub_08046D2C
	ldr r4, _08042D40
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x17
	movs r3, #0x20
	bl sub_08046A28
	ldr r0, _08042D44
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r2, #0x3d
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r3, #0x20
	bl sub_08046A28
_08042D32:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042D3C: .4byte 0x000041E8
_08042D40: .4byte gUnknown_080C6288
_08042D44: .4byte gSave
	.syntax divided
