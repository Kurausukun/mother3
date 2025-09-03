	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov ip, r0
	ldr r0, [sp, #0x50]
	ldr r4, [sp, #0x54]
	ldr r5, [sp, #0x58]
	ldr r6, [sp, #0x5c]
	ldr r7, [sp, #0x60]
	mov r8, r7
	ldr r7, [sp, #0x64]
	mov sb, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x2c]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	adds r2, r7, #0
	bl sub_08002634
	movs r2, #1
	mov sb, r2
	cmp r6, #0
	bne _08046C1C
	mov r1, r8
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sb, r0
_08046C1C:
	adds r5, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r6, #0
	b _08046CCE
_08046C28:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08046C64
	ldr r0, [sp, #0x1c]
	subs r0, #1
	cmp r6, r0
	beq _08046C64
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _08046C54
	ldrh r0, [r5]
	cmp r0, r7
	bne _08046C64
	mov r1, sl
	lsls r0, r1, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	b _08046CC6
_08046C54:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bgt _08046C64
	cmp r0, #0
	bne _08046C64
	ldrh r0, [r5]
	cmp r0, r7
	beq _08046CC6
_08046C64:
	movs r0, #1
	bl sub_08050E64
	adds r4, r0, #0
	mov r1, sb
	cmp r1, #0
	beq _08046C80
	ldrh r0, [r5]
	subs r0, r0, r7
	lsls r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08046C82
_08046C80:
	ldrh r3, [r5]
_08046C82:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r2, [sp, #0x28]
	lsls r1, r2, #0xe
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08046CE4
	adds r1, r0, #0
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	mov r1, r8
	lsls r1, r1, #0xe
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0xa
	orrs r3, r0
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0xc
	orrs r3, r0
	strh r3, [r4, #4]
	adds r2, #7
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08046CC6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
_08046CCE:
	ldr r2, [sp, #0x1c]
	cmp r6, r2
	blo _08046C28
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046CE4: .4byte 0x000001FF
	.syntax divided
