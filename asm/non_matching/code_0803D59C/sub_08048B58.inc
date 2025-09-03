	.syntax unified
sub_08048B58:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov ip, r0
	adds r4, r1, #0
	adds r7, r2, #0
	mov sb, r3
	ldr r5, [sp, #0x20]
	ldr r0, [r3]
	ldrh r1, [r0]
	mov r8, r1
	adds r6, r0, #2
	ldr r0, _08048B88
	cmp r8, r0
	beq _08048BA4
	cmp r8, r0
	bgt _08048B8C
	subs r0, #4
	cmp r8, r0
	beq _08048B98
	b _08048C3A
	.align 2, 0
_08048B88: .4byte 0x0000FF05
_08048B8C:
	ldr r0, _08048B94
	cmp r8, r0
	beq _08048BFA
	b _08048C3A
	.align 2, 0
_08048B94: .4byte 0x0000FFE1
_08048B98:
	ldrh r0, [r4, #8]
	strh r0, [r5]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	b _08048C30
_08048BA4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0804863C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08048BD0
	cmp r0, #2
	bgt _08048BBE
	cmp r0, #1
	beq _08048BC4
	b _08048BEC
_08048BBE:
	cmp r0, #3
	beq _08048BDC
	b _08048BEC
_08048BC4:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08048BE6
_08048BD0:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08048BE6
_08048BDC:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #7
_08048BE6:
	orrs r1, r0
	strb r1, [r4, #0x10]
	b _08048BF4
_08048BEC:
	ldrb r0, [r4, #0x10]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0x10]
_08048BF4:
	ldr r0, [r7]
	adds r0, #4
	b _08048C38
_08048BFA:
	ldr r1, [r7]
	mov r4, sp
	mov r0, ip
	mov r2, sp
	bl sub_08049280
	adds r0, r6, #0
	movs r1, #0
	bl sub_0804863C
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	ldrh r1, [r1]
	subs r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	subs r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080487A0
	ldrh r0, [r5]
	adds r0, #2
	strh r0, [r5]
_08048C30:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl sub_08049894
_08048C38:
	str r0, [r7]
_08048C3A:
	mov r0, r8
	bl sub_0804865C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	mov r2, sb
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
