	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0801B09C
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	strh r2, [r0, #2]
	ldr r5, _0801B0A0
	movs r6, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B0BA
	add r4, sp, #4
_0801B06A:
	ldrh r1, [r5, #4]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0801B09C
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	subs r0, #0x10
	strh r0, [r4, #2]
	movs r0, #0x10
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B0A4
	adds r0, r5, #0
	b _0801B0BC
	.align 2, 0
_0801B09C: .4byte 0xFFFF0000
_0801B0A0: .4byte gUnknown_0200B590
_0801B0A4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #0xc
	cmp r6, #0x13
	bhi _0801B0BA
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B06A
_0801B0BA:
	movs r0, #0
_0801B0BC:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
