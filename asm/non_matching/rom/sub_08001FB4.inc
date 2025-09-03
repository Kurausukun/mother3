	.syntax unified
sub_08001FB4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r8, r0
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov ip, r8
	mov r7, sb
	mov r6, sp
	add r4, sp, #0x18
	movs r3, #0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0x48]
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x4c]
	subs r1, #0x1c
	str r1, [sp, #0x30]
_08001FEC:
	adds r1, r6, r3
	mov r2, ip
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r5
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r5
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08001FEC
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov sl, r0
	mov r1, sb
	adds r1, #8
	str r1, [sp, #0x44]
	mov r2, r8
	adds r2, #4
	str r2, [sp, #0x3c]
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x40]
	movs r0, #8
	subs r2, r0, r5
_0800202E:
	adds r1, r6, r3
	str r1, [sp, #0x50]
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	asrs r0, r2
	ldr r1, [sp, #0x50]
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800202E
	mov ip, sl
	ldr r7, [sp, #0x44]
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x48]
	movs r3, #0
_0800205C:
	adds r2, r6, r3
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r2, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800205C
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x4c]
	movs r3, #0
	movs r0, #8
	subs r2, r0, r5
_0800208E:
	adds r1, r6, r3
	mov r5, ip
	adds r0, r5, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r7, r3
	ldrb r0, [r0]
	asrs r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0800208E
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r2, sb
	str r0, [r2]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r5, [sp, #0x30]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x3c]
	str r0, [r1, #4]
	adds r2, r5, #0
	adds r2, #8
	adds r3, r1, #0
	adds r3, #8
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0x40]
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #8
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x24]
	stm r1!, {r0}
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r0, [sp, #0x28]
	stm r1!, {r0}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [sp, #0x2c]
	str r0, [r1]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
