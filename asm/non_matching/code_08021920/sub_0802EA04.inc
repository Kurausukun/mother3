	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r7, #1
	cmp r0, #1
	ble _0802EA1C
	ldrh r7, [r1, #6]
_0802EA1C:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r6, #1
	cmp r0, #1
	ble _0802EA2A
	ldrh r6, [r1, #8]
_0802EA2A:
	ldr r1, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802EA6A
	movs r0, #1
	strh r0, [r1]
	ldr r1, [r5, #0x2c]
	adds r4, r5, #0
	adds r4, #0x85
	ldrb r0, [r4]
	strh r0, [r1, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_080364B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
	ldrb r0, [r4]
	mov r2, r8
	ldrh r1, [r2, #2]
	bl sub_08033374
	ldrb r0, [r4]
	bl sub_08033484
_0802EA6A:
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802EB2C
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802EAC6
	ldrh r0, [r1, #4]
	bl get_obj_direct
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802EAC2:
	movs r0, #1
	b _0802EB50
_0802EAC6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_080364B8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
	adds r0, r4, #0
	bl get_obj_direct
	adds r6, r0, #0
	movs r0, #0x85
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	bl sub_08033374
	adds r7, r6, #0
	adds r7, #0x85
	ldrb r0, [r7]
	mov r2, r8
	ldrh r1, [r2, #4]
	bl sub_08033374
	mov r1, sb
	ldrb r0, [r1]
	bl sub_08033484
	ldrb r0, [r7]
	bl sub_08033484
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, [r5, #0x2c]
	strh r4, [r0, #4]
	b _0802EB4E
_0802EB2C:
	ldr r0, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802EB4E
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_080364B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
_0802EB4E:
	movs r0, #0
_0802EB50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
