	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08050B50
	adds r5, r6, #0
	adds r5, #0x2c
	ldr r4, _08050AE8
	ldr r0, _08050AEC
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_08002C4C
	mov sb, r0
	ldr r0, [r4]
	bl sub_08002C54
	adds r7, r0, #0
	ldrb r0, [r5, #4]
	lsrs r4, r0, #3
	ldrh r0, [r5, #2]
	subs r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08002BA4
	bl sub_08002BF4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldrh r0, [r6, #0x2c]
	cmp r0, r2
	blo _08050B10
	ldrb r1, [r5, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08050AF0
	movs r0, #0
	b _08050B0E
	.align 2, 0
_08050AE8: .4byte gSomeBlend
_08050AEC: .4byte 0x00004524
_08050AF0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08050B0C
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r5, #4]
	b _08050B50
_08050B0C:
	subs r0, r2, #1
_08050B0E:
	strh r0, [r6, #0x2c]
_08050B10:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08002B1C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	bl sub_08002ABC
	mov r1, sl
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r4, r8
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0xb8
	lsls r1, r1, #2
	movs r2, #1
	bl sub_08050B60
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08050B50:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
