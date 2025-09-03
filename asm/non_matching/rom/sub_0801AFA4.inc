	.syntax unified
sub_0801AFA4:
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0801B018
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, sp
	strh r3, [r0, #2]
	movs r6, #0
	ldrh r1, [r7, #8]
	movs r0, #0x31
	subs r0, r0, r1
	cmp r6, r0
	bge _0801B036
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801B036
	add r5, sp, #4
_0801AFDA:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r2, _0801B018
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldr r0, [r4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r5, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B01C
	adds r0, r4, #0
	b _0801B038
	.align 2, 0
_0801B018: .4byte 0xFFFF0000
_0801B01C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0xc
	ldrh r1, [r7, #8]
	movs r0, #0x31
	subs r0, r0, r1
	cmp r6, r0
	bge _0801B036
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AFDA
_0801B036:
	movs r0, #0
_0801B038:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
