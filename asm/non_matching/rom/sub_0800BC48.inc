	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r5, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r2, [r5, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BCA0
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r5, #0
	bl sub_08002E8C
	ldr r1, _0800BC9C
	ldr r0, [sp, #0xc]
	ands r0, r1
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1, #2]
	b _0800BD14
	.align 2, 0
_0800BC9C: .4byte 0xFFFF0000
_0800BCA0:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #0xe
	add r1, sp, #0xc
	bl sub_080270A0
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800BCE4
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0800BCE4:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800BD14
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BD14
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r5, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800BD0A
	movs r1, #3
_0800BD0A:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800BD14:
	add r4, sp, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800BDF2
	ldr r7, _0800BDA8
	ldr r2, _0800BDAC
	adds r0, r7, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0800BDDC
	ldr r0, [r5, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	cmp r2, #1
	bls _0800BD5A
	add r0, sp, #0xc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0xc
	strh r1, [r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	strh r0, [r4, #2]
_0800BD5A:
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	add r4, sp, #0x10
	mov r0, sp
	adds r0, #0x12
	str r0, [sp]
	add r6, sp, #0x14
	str r6, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0800F99C
	mov r1, r8
	cmp r1, #0
	bne _0800BDB4
	ldr r2, _0800BDB0
	adds r3, r7, r2
	ldr r2, [r5, #0x34]
	ldrh r1, [r4]
	ldrh r0, [r2, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	strh r0, [r3]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #2]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	strh r0, [r3, #2]
	movs r7, #0
	ldrsh r0, [r6, r7]
	b _0800BDCE
	.align 2, 0
_0800BDA8: .4byte gGame
_0800BDAC: .4byte 0x000067B8
_0800BDB0: .4byte 0x000067A4
_0800BDB4:
	ldr r0, _0800BDD8
	adds r1, r7, r0
	ldrh r0, [r4]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldr r1, [r5, #0x34]
	movs r0, #4
	strh r0, [r1, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
_0800BDCE:
	movs r2, #2
	ldrsh r1, [r6, r2]
	bl sub_08034A8C
	b _0800BDEA
	.align 2, 0
_0800BDD8: .4byte 0x000067A4
_0800BDDC:
	add r0, sp, #0xc
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_08034A8C
_0800BDEA:
	adds r0, r5, #0
	bl sub_080360E0
	b _0800BDF8
_0800BDF2:
	adds r0, r5, #0
	bl sub_08035FE4
_0800BDF8:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
