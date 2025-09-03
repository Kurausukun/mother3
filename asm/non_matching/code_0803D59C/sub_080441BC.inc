	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r6, _0804422C
	ldr r0, [r6]
	movs r1, #0x1e
	bl Divide
	movs r1, #8
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	lsrs r5, r0, #0x10
	mov r3, sl
	ldrh r2, [r3, #0x30]
	adds r1, r5, #0
	ands r1, r2
	cmp r1, #0
	beq _08044212
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
_08044212:
	movs r7, #0
	cmp r1, #0
	bne _0804424C
	adds r1, r6, #0
_0804421A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x23
	bls _08044230
	movs r4, #0x1c
	movs r5, #1
	b _08044234
	.align 2, 0
_0804422C: .4byte gUnknown_02001044
_08044230:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_08044234:
	ldr r0, [r1]
	adds r0, #0x1e
	str r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bhi _0804424C
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0804421A
_0804424C:
	movs r0, #0
	mov r8, r0
	movs r7, #0
_08044252:
	mov r1, sl
	ldrh r0, [r1, #0x30]
	ands r0, r5
	cmp r0, #0
	beq _080442A4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080442B4
	adds r0, r0, r1
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r6, r1, #0x10
	movs r3, #0xa0
	lsls r3, r3, #0xf
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldr r3, [sp, #4]
	lsls r2, r3, #0x10
	movs r3, #0xf8
	lsls r3, r3, #0xd
	adds r2, r2, r3
	movs r3, #1
	str r3, [sp]
	asrs r2, r2, #0x10
	movs r3, #0x20
	bl sub_08046A28
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #8]
	cmp r8, r0
	bhs _080442C6
	adds r0, r6, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080442A4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x23
	bls _080442B8
	movs r4, #0x1c
	movs r5, #1
	b _080442BC
	.align 2, 0
_080442B4: .4byte gUnknown_080C6260
_080442B8:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_080442BC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _08044252
_080442C6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
