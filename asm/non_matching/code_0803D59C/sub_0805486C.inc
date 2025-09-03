	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	add r1, sp, #4
	adds r0, #0x3c
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080548A8
	adds r0, r5, #0
	bl sub_08054EF4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080548AA
_080548A8:
	ldr r2, _08054918
_080548AA:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, r5
	bne _0805491C
	movs r0, #0
	mov r8, r0
	mov r3, r8
	strb r3, [r1]
	lsls r1, r6, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	mov r7, r8
	strh r7, [r0]
	lsls r7, r2, #0x10
	asrs r1, r7, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	cmp r1, sb
	beq _08054902
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r5
	bne _08054902
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054902
	lsrs r2, r7, #0x10
	mov r1, r8
	str r1, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r3, sb
	bl sub_08054200
_08054902:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08055190
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080551B0
	movs r0, #1
	b _0805492A
	.align 2, 0
_08054918: .4byte 0x0000FFFF
_0805491C:
	adds r0, r4, #0
	mov r1, sl
	adds r2, r5, #0
	bl sub_080547A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0805492A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
