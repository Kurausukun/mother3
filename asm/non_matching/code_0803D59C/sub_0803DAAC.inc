	.syntax unified
sub_0803DAAC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov ip, r0
	ldr r0, [sp, #0x4c]
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x20]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x24]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	mov r2, sl
	bl sub_08002634
	adds r6, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, sb
	bhs _0803DB9C
	mov r8, sp
_0803DB12:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803DB34
	mov r0, sb
	subs r0, #1
	cmp r5, r0
	beq _0803DB34
	ldrh r0, [r6]
	cmp r0, sl
	bne _0803DB34
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	b _0803DB90
_0803DB34:
	ldrh r2, [r6]
	mov r0, sl
	subs r2, r2, r0
	lsls r2, r2, #3
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0803DBAC
	ldrh r3, [r1]
	lsls r3, r3, #3
	ldr r0, _0803DBB0
	adds r3, r3, r0
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x20]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0803DBB4
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x24]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0xa
	orrs r2, r0
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0xc
	orrs r2, r0
	strh r2, [r3, #4]
	bl sub_08032DF4
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	mov r1, r8
	strh r0, [r1]
_0803DB90:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #2
	cmp r5, sb
	blo _0803DB12
_0803DB9C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBAC: .4byte gMenuObjCount
_0803DBB0: .4byte gMenuObjBuffer
_0803DBB4: .4byte 0x000001FF
	.syntax divided
