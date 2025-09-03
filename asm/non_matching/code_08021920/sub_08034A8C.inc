	.syntax unified
sub_08034A8C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08034AAC
	cmp r6, #0
	beq _08034B9A
_08034AAC:
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	cmp r5, #0
	beq _08034AC8
	ldr r0, _08034AC4
	cmp r5, #0
	ble _08034AC0
	movs r0, #1
_08034AC0:
	adds r7, r0, #0
	b _08034ACA
	.align 2, 0
_08034AC4: .4byte 0x0000FFFF
_08034AC8:
	movs r7, #0
_08034ACA:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _08034AE4
	ldr r0, _08034AE0
	cmp r2, #0
	ble _08034ADC
	movs r0, #1
_08034ADC:
	adds r6, r0, #0
	b _08034AE6
	.align 2, 0
_08034AE0: .4byte 0x0000FFFF
_08034AE4:
	movs r6, #0
_08034AE6:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bge _08034AF2
	rsbs r3, r3, #0
_08034AF2:
	asrs r2, r1, #0x10
	cmp r2, #0
	bge _08034AFA
	rsbs r2, r2, #0
_08034AFA:
	cmp r3, r2
	ble _08034B02
	lsrs r0, r0, #0x10
	b _08034B04
_08034B02:
	lsrs r0, r1, #0x10
_08034B04:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08034B0E
	rsbs r0, r0, #0
_08034B0E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	cmp r5, sb
	bhs _08034B9A
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x10
	mov r0, r8
	lsls r0, r0, #4
	str r0, [sp]
	lsls r1, r7, #4
	mov sl, r1
	adds r6, r4, #0
	adds r6, #0xbd
_08034B32:
	bl sub_08034BAC
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _08034B58
	ldrh r0, [r1, #2]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r1, #2]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r1, #0
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	b _08034B64
_08034B58:
	ldrh r0, [r4]
	ldr r1, [sp]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #2]
	add r0, sl
_08034B64:
	strh r0, [r4, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r2, #1
	bl sub_0801A7CC
	strh r0, [r4]
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r2, #1
	bl sub_0801A868
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08034EB8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	blo _08034B32
_08034B9A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
