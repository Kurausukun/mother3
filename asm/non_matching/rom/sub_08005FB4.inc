	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r4, #8]
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r4, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0xe]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x10]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x12]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x14]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x18]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x20]
	strh r0, [r1]
	adds r1, #0x32
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	subs r1, #0xc
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x28]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
	adds r1, #6
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #2
	bne _080060CA
	ldr r1, _080061A0
	ldrh r0, [r4, #0x30]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x34]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x36]
	strh r0, [r1]
	adds r1, #0xa
	ldrh r0, [r4, #0x38]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x3e]
	strh r0, [r1]
	subs r1, #0xe
	ldr r0, [r4, #0x40]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x40]
	ldr r2, _080061A4
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x44]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x44]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #0xa
	ldr r0, [r4, #0x48]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x48]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x4c]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x4c]
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
_080060CA:
	ldr r3, _080061A8
	ldr r1, _080061AC
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldr r2, _080061B0
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r3]
	ldr r2, _080061B4
	ldrb r1, [r2, #1]
	movs r0, #5
	ands r0, r1
	mov sb, r2
	cmp r0, #1
	beq _08006190
	ldrh r1, [r4, #8]
	movs r0, #0xff
	ands r0, r1
	ldrh r1, [r4, #8]
	strh r0, [r4, #8]
	mov r1, sp
	ldrh r0, [r4, #0x1a]
	strh r0, [r1]
	movs r3, #0
	ldr r0, _080061B8
	mov ip, r0
	ldr r1, _080061BC
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x12
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x1a
_0800611A:
	lsls r0, r3, #1
	adds r1, r7, r0
	ldrh r2, [r1]
	strh r5, [r1]
	adds r0, r6, r0
	ldrh r1, [r0]
	strh r5, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0800611A
	ldr r0, _080061C0
	add r0, ip
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08006148
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
_08006148:
	mov r2, sb
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800615A
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
_0800615A:
	ldrh r0, [r4, #0x2e]
	movs r0, #0
	strh r0, [r4, #0x2e]
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08006190
	ldr r3, _080061C4
	ldr r2, _080061C8
	add r2, ip
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strh r0, [r3]
	mov r2, ip
	ldrh r0, [r2, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	mov r2, ip
	ldrh r1, [r2, #8]
	movs r1, #0
	orrs r0, r1
	strh r0, [r2, #8]
_08006190:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080061A0: .4byte 0x04000020
_080061A4: .4byte 0x0FFF0000
_080061A8: .4byte gUnknown_03005314
_080061AC: .4byte 0x00002C4C
_080061B0: .4byte 0x00002C4E
_080061B4: .4byte gGame
_080061B8: .4byte gSomeBlend
_080061BC: .4byte gUnknown_02000000
_080061C0: .4byte 0x000035BA
_080061C4: .4byte gUnknown_03004AF0
_080061C8: .4byte 0x0001ED10
	.syntax divided
