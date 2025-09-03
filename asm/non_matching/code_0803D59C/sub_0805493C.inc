	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	mov sb, r1
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	add r1, sp, #4
	adds r0, r4, #0
	adds r0, #0x3c
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	cmp r4, sb
	bne _0805496E
	b _08054A7E
_0805496E:
	mov r0, sb
	mov r1, r8
	bl sub_08054670
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805497E
	b _08054A7E
_0805497E:
	mov r0, r8
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054996
	mov r0, r8
	bl sub_08054EF4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08054998
_08054996:
	ldr r2, _080549FC
_08054998:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	ldr r3, _08054A00
	asrs r7, r3, #0x10
	mov sl, r0
	cmp r1, r7
	bne _08054A10
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x3c
_080549AC:
	adds r1, r5, r6
	ldrb r0, [r1]
	cmp r0, r8
	bne _08054A04
	movs r7, #0
	strb r7, [r1]
	lsls r1, r6, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	strh r7, [r0]
	lsls r5, r2, #0x10
	asrs r1, r5, #0x10
	asrs r3, r3, #0x10
	cmp r1, r3
	beq _080549F6
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r8
	bne _080549F6
	adds r0, r4, #0
	adds r1, r6, #0
	str r3, [sp, #0x18]
	bl sub_08055180
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x18]
	cmp r0, #0
	beq _080549F6
	lsrs r2, r5, #0x10
	str r7, [sp]
	adds r0, r4, #0
	ldr r1, [sp, #0x14]
	bl sub_08054200
_080549F6:
	adds r0, r4, #0
	adds r1, r6, #0
	b _08054A62
	.align 2, 0
_080549FC: .4byte 0x0000FFFF
_08054A00: .4byte 0xFFFF0000
_08054A04:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _080549AC
	b _08054A7E
_08054A10:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r3, r0, r1
	ldrb r0, [r3]
	cmp r0, r8
	bne _08054A7E
	movs r5, #0
	strb r5, [r3]
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	strh r5, [r0]
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	cmp r1, r7
	beq _08054A5C
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r8
	bne _08054A5C
	mov r0, sl
	lsrs r1, r0, #0x10
	adds r0, r4, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054A5C
	lsrs r2, r6, #0x10
	str r5, [sp]
	adds r0, r4, #0
	ldr r1, [sp, #0x14]
	adds r3, r7, #0
	bl sub_08054200
_08054A5C:
	mov r2, sl
	lsrs r1, r2, #0x10
	adds r0, r4, #0
_08054A62:
	movs r2, #0
	bl sub_08055190
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080551B0
	mov r0, sb
	mov r1, r8
	movs r2, #1
	bl sub_080546D8
	movs r0, #1
	b _08054A80
_08054A7E:
	movs r0, #0
_08054A80:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
