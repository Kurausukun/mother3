	.syntax unified
sub_0806ADFC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	ldrh r1, [r0, #0x30]
	adds r0, #0x74
	strh r1, [r0]
	movs r0, #0
	mov r8, r0
	mov r6, ip
	adds r6, #0x50
	movs r1, #0x72
	add r1, ip
	mov sl, r1
	mov sb, r0
	mov r4, ip
	adds r4, #0x40
_0806AE24:
	mov r0, ip
	adds r0, #0x38
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806AE3E
	movs r0, #0x80
	lsls r0, r0, #6
	mov r2, r8
	lsls r0, r2
	ldrh r1, [r6]
	orrs r0, r1
	b _0806AE4A
_0806AE3E:
	movs r1, #0x80
	lsls r1, r1, #6
	mov r3, r8
	lsls r1, r3
	ldrh r0, [r6]
	bics r0, r1
_0806AE4A:
	strh r0, [r6]
	mov r5, r8
	lsls r2, r5, #3
	movs r0, #0x3f
	lsls r0, r2
	mov r7, sl
	ldrh r1, [r7]
	bics r1, r0
	strh r1, [r7]
	mov r0, ip
	adds r0, #0x3a
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r2
	orrs r1, r0
	strh r1, [r7]
	mov r0, ip
	movs r2, #0x34
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	movs r0, #0
	cmp r1, #0
	blt _0806AE84
	adds r0, r1, #0
	cmp r0, #0xf0
	ble _0806AE84
	movs r0, #0xf0
_0806AE84:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r7, ip
	movs r0, #0x34
	ldrsh r2, [r7, r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #8
	ldrsh r1, [r4, r3]
	adds r2, r2, r0
	adds r2, r2, r1
	adds r0, r5, #0
	cmp r2, r5
	blt _0806AEA8
	adds r0, r2, #0
	cmp r0, #0xf0
	ble _0806AEA8
	movs r0, #0xf0
_0806AEA8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r7, ip
	movs r0, #0x36
	ldrsh r1, [r7, r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	movs r0, #0
	cmp r1, #0
	blt _0806AEC8
	adds r0, r1, #0
	cmp r0, #0xa0
	ble _0806AEC8
	movs r0, #0xa0
_0806AEC8:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r7, ip
	movs r0, #0x36
	ldrsh r2, [r7, r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r7, #0xa
	ldrsh r1, [r4, r7]
	adds r2, r2, r0
	adds r2, r2, r1
	adds r0, r3, #0
	cmp r2, r3
	blt _0806AEEC
	adds r0, r2, #0
	cmp r0, #0xa0
	ble _0806AEEC
	movs r0, #0xa0
_0806AEEC:
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	mov r1, ip
	adds r1, #0x6a
	add r1, sb
	lsls r0, r5, #8
	ldr r5, [sp]
	orrs r0, r5
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x6e
	add r1, sb
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1]
	movs r7, #2
	add sb, r7
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #1
	ble _0806AE24
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
