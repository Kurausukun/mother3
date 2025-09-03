	.syntax unified
sub_0804557C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	ldr r5, [sp, #0x3c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	add r0, sp, #0x18
	strh r3, [r0]
	mov r4, sp
	adds r4, #0x1a
	strh r5, [r4]
	ldr r5, _080455E8
	mov r0, sl
	adds r1, r5, #0
	bl Divide
	mov sb, r0
	mov r0, sl
	adds r1, r5, #0
	bl sub_08002FD4
	mov sl, r0
	ldrh r0, [r4]
	adds r6, r0, #0
	cmp r6, #0
	beq _080455EC
	lsls r5, r7, #0x10
	asrs r1, r5, #0x10
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r2, r4, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, sb
	bl sub_08046BA8
	b _0804564C
	.align 2, 0
_080455E8: .4byte 0x00034BC0
_080455EC:
	ldr r0, _08045620
	ldr r1, _08045624
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _08045628
	lsls r5, r7, #0x10
	asrs r1, r5, #0x10
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0xd8
	lsls r0, r0, #1
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, sb
	bl sub_08046BA8
	b _0804564C
	.align 2, 0
_08045620: .4byte gSomeBlend
_08045624: .4byte 0x00004260
_08045628:
	lsls r5, r7, #0x10
	asrs r1, r5, #0x10
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r2, r4, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, sb
	bl sub_08046BA8
_0804564C:
	adds r6, r4, #0
	ldr r0, _0804567C
	ldr r1, _08045680
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _0804568C
	mov r2, sp
	ldrh r1, [r2, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08045684
	adds r0, r0, r1
	ldr r2, _08045688
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	b _080456AC
	.align 2, 0
_0804567C: .4byte gSomeBlend
_08045680: .4byte 0x00004260
_08045684: .4byte gUnknown_080C674C
_08045688: .4byte 0xFFE00000
_0804568C:
	mov r0, sp
	ldrh r1, [r0, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080456E4
	adds r0, r0, r1
	ldr r2, _080456E8
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_080456AC:
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804571A
	ldr r0, _080456EC
	ldr r1, _080456F0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _080456F8
	mov r2, sp
	ldrh r1, [r2, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080456F4
	adds r0, r0, r1
	movs r2, #0xf0
	lsls r2, r2, #0xc
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	b _0804571A
	.align 2, 0
_080456E4: .4byte gUnknown_080C63F0
_080456E8: .4byte 0xFFE00000
_080456EC: .4byte gSomeBlend
_080456F0: .4byte 0x00004260
_080456F4: .4byte gUnknown_080C6738
_080456F8:
	mov r0, sp
	ldrh r1, [r0, #0x1a]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804575C
	adds r0, r0, r1
	movs r2, #0xf0
	lsls r2, r2, #0xc
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_0804571A:
	movs r4, #0xe1
	lsls r4, r4, #4
	mov r0, sl
	adds r1, r4, #0
	bl Divide
	adds r7, r0, #0
	mov r0, sl
	adds r1, r4, #0
	bl sub_08002FD4
	mov r1, sp
	ldrh r0, [r1, #0x1a]
	adds r4, r0, #0
	cmp r4, #0
	beq _08045760
	movs r2, #0xc0
	lsls r2, r2, #0xd
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08045788
	.align 2, 0
_0804575C: .4byte gUnknown_080C66AC
_08045760:
	ldr r0, _08045794
	ldr r1, _08045798
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _0804579C
	movs r2, #0xc0
	lsls r2, r2, #0xd
	adds r1, r5, r2
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0xd8
	lsls r0, r0, #1
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
_08045788:
	str r3, [sp, #0x14]
	adds r0, r7, #0
	bl sub_08046BA8
	b _080457C0
	.align 2, 0
_08045794: .4byte gSomeBlend
_08045798: .4byte 0x00004260
_0804579C:
	movs r0, #0xc0
	lsls r0, r0, #0xd
	adds r1, r5, r0
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r3, #2
	str r3, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r7, #0
	bl sub_08046BA8
_080457C0:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
