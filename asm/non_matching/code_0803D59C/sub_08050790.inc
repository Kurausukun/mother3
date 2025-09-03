	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	ldr r4, _0805085C
	lsrs r7, r1, #0x10
	orrs r7, r0
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080507E0
	adds r0, r6, #0
	bl sub_080510B8
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ands r7, r4
	orrs r7, r0
_080507E0:
	movs r2, #0x5c
	adds r2, r2, r6
	mov sl, r2
	adds r3, r6, #0
	adds r3, #0x70
	str r3, [sp, #0x14]
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	adds r1, r6, #0
	adds r1, #0x60
	str r1, [sp, #0x10]
	adds r5, r3, #0
_080507FA:
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r6, #0
	bl sub_0805111C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	ldrb r1, [r5]
	movs r3, #4
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	mov r2, r8
	ldrh r0, [r2]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	bl sub_08036E0C
	adds r4, r0, #0
	bl sub_08002C4C
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_08002C54
	adds r4, r0, #0
	adds r1, r6, #0
	bl sub_08050948
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080507FA
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	cmp r1, #0
	bne _08050860
	ldr r0, [r6, #0x18]
	b _08050868
	.align 2, 0
_0805085C: .4byte 0x0000FFFF
_08050860:
	mov r3, r8
	ldrh r0, [r3]
	bl sub_08036D78
_08050868:
	str r0, [r6, #0x14]
	mov r1, sb
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _080508D8
	lsrs r1, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x64
	adds r0, r4, #0
	bl sub_08002B60
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x5e
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r1
	beq _0805089E
	strh r1, [r2]
	ldr r0, [sp, #8]
	bl sub_08002AF4
	str r0, [r6, #0x10]
	adds r1, r6, #0
	bl sub_08050D00
_0805089E:
	ldr r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x66
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r2, [r2]
	adds r3, r6, #0
	adds r3, #0x6e
	ldrb r3, [r3]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	asrs r5, r7, #0x10
	str r5, [sp, #4]
	bl sub_080509B0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08050A74
	ldr r0, [sp, #0xc]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08050C08
_080508D8:
	ldr r2, [sp, #0x10]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	ble _080508F0
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	b _0805092C
_080508F0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805090C
	ldr r0, _08050904
	ldr r1, _08050908
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	b _0805091E
	.align 2, 0
_08050904: .4byte gUnknown_0200F920
_08050908: .4byte 0x00006474
_0805090C:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805092E
	ldr r0, _08050940
	ldr r2, _08050944
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #3
_0805091E:
	ands r0, r1
	cmp r0, #0
	bne _0805092E
	adds r1, r6, #0
	adds r1, #0x64
	ldrh r0, [r1]
	adds r0, #1
_0805092C:
	strh r0, [r1]
_0805092E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050940: .4byte gUnknown_0200F920
_08050944: .4byte 0x00006474
	.syntax divided
