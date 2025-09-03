	.syntax unified
sub_0803D878:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov ip, r0
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x58]
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x60]
	ldr r7, [sp, #0x64]
	mov r8, r7
	ldr r7, [sp, #0x68]
	mov sb, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	ldr r2, [sp, #0x20]
	bl sub_08002634
	adds r5, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r6, #0
	ldr r4, [sp, #0x1c]
	cmp r6, r4
	bhs _0803D98E
	mov r3, sp
	ldr r0, _0803D918
	mov sb, r0
_0803D8F0:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0803D92E
	ldr r0, [sp, #0x1c]
	subs r0, #1
	cmp r6, r0
	beq _0803D92E
	mov r1, sl
	cmp r1, #1
	bne _0803D91C
	ldrh r0, [r5]
	ldr r4, [sp, #0x20]
	cmp r0, r4
	bne _0803D92E
	lsls r0, r7, #0x10
	movs r7, #0xe0
	lsls r7, r7, #0xb
	adds r0, r0, r7
	lsrs r7, r0, #0x10
	b _0803D980
	.align 2, 0
_0803D918: .4byte gMenuObjCount
_0803D91C:
	mov r0, sl
	cmp r0, #1
	bgt _0803D92E
	cmp r0, #0
	bne _0803D92E
	ldrh r0, [r5]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	beq _0803D980
_0803D92E:
	mov r4, sb
	ldrh r2, [r4]
	lsls r2, r2, #3
	ldr r0, _0803D9A0
	adds r2, r2, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x28]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803D9A4
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x2c]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r2, #2]
	mov r0, r8
	lsls r1, r0, #0xa
	ldrh r0, [r5]
	orrs r1, r0
	ldr r7, [sp, #0x24]
	lsls r0, r7, #0xc
	orrs r1, r0
	strh r1, [r2, #4]
	str r3, [sp, #0x30]
	bl sub_08032DF4
	adds r4, #7
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	ldr r3, [sp, #0x30]
	strh r0, [r3]
_0803D980:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	blo _0803D8F0
_0803D98E:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9A0: .4byte gMenuObjBuffer
_0803D9A4: .4byte 0x000001FF
	.syntax divided
