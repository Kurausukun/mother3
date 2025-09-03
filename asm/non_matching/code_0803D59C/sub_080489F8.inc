	.syntax unified
sub_080489F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	ldr r0, _08048A94
	add r0, sl
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	movs r7, #0
	ldr r0, _08048A98
	add r0, sl
	ldrb r0, [r0]
	cmp r7, r0
	blo _08048A1C
	b _08048B3C
_08048A1C:
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x18]
_08048A22:
	ldr r1, [r4, #4]
	ldr r0, _08048A9C
	ldr r2, _08048AA0
	adds r2, r2, r0
	mov sb, r2
	ldrh r2, [r2]
	ldrb r3, [r4, #8]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	ldr r0, [sp, #0x18]
	bl sub_080485C4
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r4]
	orrs r1, r0
	mov r8, r1
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	bl sub_08049894
	adds r3, r0, #0
	ldr r6, [sp, #0x18]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r4, #8]
	lsls r0, r1, #0x1c
	movs r5, #0
	adds r2, r7, #1
	str r2, [sp, #0x1c]
	adds r7, r4, #0
	adds r7, #0xc
	str r7, [sp, #0x20]
	cmp r0, #0
	beq _08048B28
	mov ip, sp
	ldr r0, _08048AA4
	add r0, sl
	str r0, [sp, #0x24]
_08048A74:
	mov r2, ip
	ldrh r0, [r2]
	cmp r0, #0
	bne _08048ABE
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	subs r0, #1
	cmp r5, r0
	beq _08048ABE
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _08048AA8
	cmp r0, #1
	beq _08048AB4
	b _08048ABE
	.align 2, 0
_08048A94: .4byte 0x00006C28
_08048A98: .4byte 0x000076DB
_08048A9C: .4byte gSomeBlend
_08048AA0: .4byte 0x0000C59A
_08048AA4: .4byte 0x000076D8
_08048AA8:
	ldrh r0, [r6]
	mov r7, sb
	ldrh r7, [r7]
	cmp r0, r7
	beq _08048B16
	b _08048ABE
_08048AB4:
	ldrh r0, [r6]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	beq _08048B14
_08048ABE:
	movs r0, #1
	mov r2, ip
	strh r0, [r2]
	ldr r0, [r3]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08048AD4
	ldr r7, [sp, #0x24]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
_08048AD4:
	ldrh r2, [r6]
	ldr r1, _08048B4C
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3]
	ldr r7, _08048B50
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldrh r1, [r4, #8]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1c
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldrb r0, [r3, #2]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r7, #5
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	subs r2, #7
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3, #2]
_08048B14:
	adds r3, #4
_08048B16:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #2
	ldrb r1, [r4, #8]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r5, r0
	blo _08048A74
_08048B28:
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x20]
	ldr r0, _08048B54
	add r0, sl
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08048B3C
	b _08048A22
_08048B3C:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048B4C: .4byte 0x00000FFF
_08048B50: .4byte 0xFFFFF000
_08048B54: .4byte 0x000076DB
	.syntax divided
