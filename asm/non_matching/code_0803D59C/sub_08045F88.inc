	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08046004
	ldrh r4, [r0, #4]
	lsls r4, r4, #2
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r4, r0
	movs r0, #0x3c
	bl sub_080486A0
	movs r7, #1
	rsbs r7, r7, #0
	movs r5, #0xf
	str r5, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x30
	adds r3, r7, #0
	bl sub_08047CDC
	ldrb r1, [r4, #2]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _08046008
	movs r0, #0x3e
	bl sub_080486A0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x3c
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x3f
	bl sub_080486A0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x48
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x40
	bl sub_080486A0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x54
	adds r3, r7, #0
	bl sub_08047CDC
	b _08046030
	.align 2, 0
_08046004: .4byte gUnknown_02018E28
_08046008:
	movs r0, #0x3f
	bl sub_080486A0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x3c
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x40
	bl sub_080486A0
	str r5, [sp]
	str r6, [sp, #4]
	movs r1, #0x18
	movs r2, #0x48
	adds r3, r7, #0
	bl sub_08047CDC
_08046030:
	movs r0, #0x3d
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0x58
	movs r2, #0x30
	bl sub_08047CDC
	movs r7, #0
	movs r6, #0
	ldr r0, _080460BC
	ldr r1, _080460C0
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r6, r1
	bhs _080460A2
	mov r8, r0
_0804605C:
	adds r0, r6, #0
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08046094
	ldrb r0, [r4]
	bl sub_08054FB8
	adds r2, r7, #0
	adds r2, #0x3c
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0x58
	movs r3, #9
	bl sub_08047CDC
	adds r0, r7, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08046094:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	ldrh r0, [r0]
	cmp r6, r0
	blo _0804605C
_080460A2:
	ldr r0, _080460BC
	ldr r1, _080460C4
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08054F34
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080460BC: .4byte gSomeBlend
_080460C0: .4byte 0x00002DFA
_080460C4: .4byte 0x000041D5
	.syntax divided
