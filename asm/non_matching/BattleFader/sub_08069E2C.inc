    .syntax unified
sub_08069E2C:
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r1
	mov sl, r2
	str r3, [sp, #0x28]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x34
	mov r2, ip
	muls r2, r1, r2
	adds r1, r2, #0
	adds r1, #0x28
	adds r5, r0, r1
	movs r6, #0
	ldrb r7, [r5]
	cmp r6, r7
	bge _08069F0A
	adds r0, r5, #4
	str r0, [sp, #4]
	ldr r1, _08069EF4 @ =0x04000200
	mov sb, r1
	adds r3, r5, #0
	adds r3, #0x16
	adds r4, r0, #0
	ldr r2, [sp, #0x28]
	asrs r2, r2, #0x10
	mov r8, r2
	movs r2, #0
_08069E72:
	ldr r0, [r4]
	cmp r0, sl
	bne _08069EFC
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r1, r8
	bne _08069EFC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08069E96
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldr r7, [sp, #0x2c]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _08069EA4
_08069E96:
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne _08069EFC
_08069EA4:
	adds r0, r6, #1
	ldrb r7, [r5]
	cmp r0, r7
	bge _08069ECC
	adds r3, r0, #0
	adds r2, r2, r5
	lsls r0, r6, #2
	ldr r1, [sp, #4]
	adds r4, r0, r1
_08069EB6:
	ldr r0, [r4, #4]
	stm r4!, {r0}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	adds r3, #1
	adds r2, #8
	ldrb r7, [r5]
	cmp r3, r7
	blt _08069EB6
_08069ECC:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069F0A
	movs r1, #1
	mov r0, ip
	lsls r1, r0
	mov r2, sb
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r1, _08069EF8 @ =0x04000004
	ldrh r0, [r1]
	ldr r7, [sp]
	bics r0, r7
	strh r0, [r1]
	b _08069F0A
	.align 2, 0
_08069EF4: .4byte 0x04000200
_08069EF8: .4byte 0x04000004
_08069EFC:
	adds r3, #8
	adds r4, #4
	adds r2, #8
	adds r6, #1
	ldrb r0, [r5]
	cmp r6, r0
	blt _08069E72
_08069F0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3
    .syntax divided
