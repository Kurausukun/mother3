	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08017F90
	bl sub_08018B30
	ldr r5, _08012080
	movs r4, #0
	ldr r6, _08012084
	ldr r0, _08012088
	adds r0, r0, r5
	mov sl, r0
	mov r8, r4
	movs r1, #0x1a
	adds r1, r1, r6
	mov sb, r1
	adds r7, r5, #0
	adds r7, #0x34
_08012052:
	ldrb r1, [r7, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801206A
	movs r0, #0x80
	lsls r0, r0, #2
	lsls r0, r4
	ldrh r1, [r6, #8]
	orrs r0, r1
	ldrh r1, [r6, #8]
	strh r0, [r6, #8]
_0801206A:
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0801208C
	cmp r4, #0
	bne _0801208C
	bl sub_08019D9C
	movs r4, #1
	b _080120B6
	.align 2, 0
_08012080: .4byte gUnknown_0200B4B0
_08012084: .4byte gSomeBlend
_08012088: .4byte 0x00000F14
_0801208C:
	mov r0, r8
	strb r0, [r7]
	adds r4, #1
	lsls r3, r4, #1
	adds r1, r6, #0
	adds r1, #0x12
	adds r1, r3, r1
	ldrh r0, [r5, #0xc]
	ldrh r2, [r5, #8]
	adds r0, r0, r2
	ldrh r2, [r1]
	strh r0, [r1]
	add r3, sb
	ldrh r0, [r5, #0xe]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	mov r2, r8
	strh r2, [r5, #0xc]
	strh r2, [r5, #0xe]
_080120B6:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	adds r7, #0x38
	adds r5, #0x38
	cmp r4, #2
	bls _08012052
	bl sub_08012EA8
	bl sub_08012F2C
	bl sub_080135AC
	bl sub_08013B6C
	ldr r4, _080120F0
	adds r0, r4, #0
	bl sub_08027680
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_080279AC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080120F0: .4byte gUnknown_0200DF84
	.syntax divided
