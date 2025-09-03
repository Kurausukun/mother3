	.syntax unified
sub_08008D3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	adds r7, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08009D6C
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	add r1, sp, #0x18
	mov r8, r1
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x24]
	adds r6, r7, #0
	adds r6, #0xc8
	ldrb r2, [r6]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	mov r1, r8
	bl sub_08002104
	ldr r0, _08008DB4
	adds r5, r7, #0
	adds r5, #8
	adds r7, #0x68
	ldr r3, [r6]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008E08
	cmp r4, #0x3e
	bne _08008DB8
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0xb
	movs r3, #3
	bl sub_08001F50
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0xb
	b _08008DD6
	.align 2, 0
_08008DB4: .4byte gUnknown_0201E908
_08008DB8:
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1c
	cmp r2, #0xf
	beq _08008DDE
	adds r0, r5, #0
	mov r1, sp
	movs r3, #3
	bl sub_08001F50
	ldrb r2, [r6]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	mov r1, r8
_08008DD6:
	movs r3, #3
	bl sub_08001F50
	b _08008DFA
_08008DDE:
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0xf
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r6]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	mov r1, r8
	movs r3, #3
	bl sub_08001EA4
_08008DFA:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
