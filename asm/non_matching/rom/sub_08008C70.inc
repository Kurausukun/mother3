	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	add r7, sp, #0x18
_08008C8A:
	mov r1, sp
	adds r2, r1, r3
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	mov r5, sp
	adds r2, r5, r0
	ldrb r0, [r1, #1]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08008C8A
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r7]
	ldrb r0, [r1, #1]
	strb r0, [r7, #8]
	adds r5, r6, #0
	adds r5, #0xc8
	ldrb r2, [r5]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002104
	ldr r0, _08008D10
	adds r4, r6, #0
	adds r4, #8
	adds r6, #0x68
	ldr r3, [r5]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08008E08
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1c
	cmp r2, #0xf
	beq _08008D14
	adds r0, r4, #0
	mov r1, sp
	movs r3, #3
	bl sub_08001F50
	ldrb r2, [r5]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #3
	bl sub_08001F50
	b _08008D30
	.align 2, 0
_08008D10: .4byte gUnknown_0201E908
_08008D14:
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0xf
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r5]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #3
	bl sub_08001EA4
_08008D30:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
