	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	add r1, sp, #4
	adds r0, #0x3c
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080547DC
	mov r0, r8
	bl sub_08054EF4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080547DE
_080547DC:
	ldr r2, _08054848
_080547DE:
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x3c
	ldr r3, _0805484C
_080547E6:
	adds r1, r5, r6
	ldrb r0, [r1]
	cmp r0, r8
	bne _08054850
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
	beq _08054830
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r8
	bne _08054830
	adds r0, r4, #0
	adds r1, r6, #0
	str r3, [sp, #0x14]
	bl sub_08055180
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x14]
	cmp r0, #0
	beq _08054830
	lsrs r2, r5, #0x10
	str r7, [sp]
	adds r0, r4, #0
	mov r1, sb
	bl sub_08054200
_08054830:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08055190
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080551B0
	movs r0, #1
	b _0805485C
	.align 2, 0
_08054848: .4byte 0x0000FFFF
_0805484C: .4byte 0xFFFF0000
_08054850:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _080547E6
	movs r0, #0
_0805485C:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
