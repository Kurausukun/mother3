	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	ldr r0, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	mov r8, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x10]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x14]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, sb
	bhs _0803DA8E
	mov r6, sp
_0803DA00:
	mov r1, sl
	adds r0, r1, r5
	ldrb r1, [r0]
	mov r0, sl
	adds r0, #3
	adds r0, r0, r5
	lsls r1, r1, #3
	ldrb r0, [r0]
	adds r3, r1, r0
	ldrh r0, [r6]
	cmp r0, #0
	bne _0803DA30
	mov r0, sb
	subs r0, #1
	cmp r5, r0
	beq _0803DA30
	cmp r3, #0
	bne _0803DA30
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	b _0803DA84
_0803DA30:
	ldr r1, [sp, #8]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0803DAA0
	ldrh r2, [r4]
	lsls r2, r2, #3
	ldr r0, _0803DAA4
	adds r2, r2, r0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x10]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803DAA8
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x14]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r2, #2]
	mov r1, r8
	lsls r0, r1, #0xa
	orrs r3, r0
	ldr r7, [sp, #0xc]
	lsls r0, r7, #0xc
	orrs r3, r0
	strh r3, [r2, #4]
	bl sub_08032DF4
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	strh r0, [r6]
_0803DA84:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	blo _0803DA00
_0803DA8E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAA0: .4byte gMenuObjCount
_0803DAA4: .4byte gMenuObjBuffer
_0803DAA8: .4byte 0x000001FF
	.syntax divided
