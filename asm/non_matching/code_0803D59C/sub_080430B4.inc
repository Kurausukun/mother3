	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _080431D8
	add r1, sp, #4
	movs r2, #0x14
	bl sub_08001B18
	movs r5, #0
	ldr r0, _080431DC
	ldr r1, _080431E0
	adds r0, r0, r1
	ldrh r3, [r0]
	cmp r5, r3
	bhs _08043142
	add r4, sp, #4
	mov sb, r0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	mov r8, r0
_080430EA:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043134
	adds r0, r1, #0
	bl sub_080552E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080431E4
	lsls r2, r0, #1
	adds r2, r2, r1
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r4, #2]
	ldr r1, _080431E8
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #5
	strh r0, [r4, #4]
	movs r0, #0x16
	muls r0, r5, r0
	add r0, r8
	strh r0, [r4, #0x10]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #3
	strh r0, [r4, #0x12]
	add r0, sp, #4
	bl sub_08046A64
_08043134:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	ldrh r0, [r0]
	cmp r5, r0
	blo _080430EA
_08043142:
	ldr r0, _080431DC
	ldr r1, _080431EC
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804318E
	movs r0, #0x16
	adds r1, r5, #0
	muls r1, r0, r1
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _080431F0
	ldr r0, [sp, #0x18]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x18]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #3
	add r2, sp, #0x18
	strh r0, [r2, #2]
	ldr r0, _080431F4
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0804318E:
	cmp r5, #3
	bhi _080431CA
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r7, r0, #0
	adds r7, #8
	add r4, sp, #0x18
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r6, r0, #3
_080431A2:
	movs r0, #0x16
	muls r0, r5, r0
	adds r0, r0, r7
	strh r0, [r4]
	strh r6, [r4, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r0, #1
	str r0, [sp]
	ldr r0, _080431F8
	movs r3, #0x20
	bl sub_08046A28
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _080431A2
_080431CA:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080431D8: .4byte gUnknown_080C629C
_080431DC: .4byte gSomeBlend
_080431E0: .4byte 0x00002DFA
_080431E4: .4byte gUnknown_080C6994
_080431E8: .4byte gUnknown_080C69B8
_080431EC: .4byte 0x00004260
_080431F0: .4byte 0xFFFF0000
_080431F4: .4byte gUnknown_080C62C4
_080431F8: .4byte gUnknown_080C62B0
	.syntax divided
