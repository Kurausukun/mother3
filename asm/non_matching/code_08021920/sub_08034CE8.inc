	.syntax unified
sub_08034CE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bne _08034D0C
	lsls r0, r2, #0x10
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D9C
	movs r0, #0
	mov r8, r0
	b _08034D18
_08034D0C:
	ldr r0, _08034D2C
	cmp r1, #0
	ble _08034D14
	movs r0, #1
_08034D14:
	mov r8, r0
	lsls r1, r2, #0x10
_08034D18:
	asrs r3, r1, #0x10
	cmp r3, #0
	beq _08034D30
	ldr r0, _08034D2C
	cmp r3, #0
	ble _08034D26
	movs r0, #1
_08034D26:
	adds r7, r0, #0
	b _08034D32
	.align 2, 0
_08034D2C: .4byte 0x0000FFFF
_08034D30:
	movs r7, #0
_08034D32:
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08034D3C
	rsbs r0, r0, #0
_08034D3C:
	asrs r3, r1, #0x10
	cmp r3, #0
	bge _08034D44
	rsbs r3, r3, #0
_08034D44:
	cmp r0, r3
	ble _08034D4C
	lsrs r0, r2, #0x10
	b _08034D4E
_08034D4C:
	lsrs r0, r1, #0x10
_08034D4E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08034D58
	rsbs r0, r0, #0
_08034D58:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _08034D9C
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
_08034D6E:
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #2]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	ldrh r0, [r1, #2]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r1, #0
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08034EB8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08034D6E
_08034D9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
