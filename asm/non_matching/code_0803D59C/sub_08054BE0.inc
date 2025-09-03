	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	mov sb, r1
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
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0805476C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08054558
	adds r0, r5, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054C2C
	adds r0, r5, #0
	bl sub_08054EF4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08054C2E
_08054C2C:
	ldr r3, _08054CA0
_08054C2E:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, r5
	bne _08054C48
	movs r2, #0
	strb r2, [r1]
	lsls r1, r6, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	strh r2, [r0]
_08054C48:
	lsls r7, r3, #0x10
	asrs r1, r7, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	cmp r1, r8
	beq _08054C80
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, r5
	bne _08054C80
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054C80
	lsrs r2, r7, #0x10
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	mov r3, r8
	bl sub_08054200
_08054C80:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08055190
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080551B0
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054CA0: .4byte 0x0000FFFF
	.syntax divided
