	.syntax unified
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	cmp r0, r1
	bhs _0802ACFA
	ldrh r2, [r4, #0xa]
	cmp r1, r2
	beq _0802ACB6
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802ACB6
	adds r0, r2, #1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	ldrb r0, [r4, #2]
	cmp r0, #9
	bne _0802ACAC
	movs r0, #1
	strb r0, [r4, #4]
_0802ACAC:
	movs r0, #0
	strb r0, [r4, #5]
	mov r0, sp
	ldrh r0, [r0, #4]
	strb r0, [r4, #2]
_0802ACB6:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802ACDC
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802ACDC
	ldrb r0, [r4, #1]
	cmp r0, #9
	bne _0802ACD2
	movs r0, #1
	strb r0, [r4, #3]
_0802ACD2:
	movs r0, #0
	strb r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #2]
	strb r0, [r4, #1]
_0802ACDC:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0802AD7C
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802AD7C
	movs r0, #0
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
	b _0802AD7C
_0802ACFA:
	cmp r0, r1
	bls _0802AD7C
	ldrh r2, [r4, #0xa]
	cmp r1, r2
	beq _0802AD48
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0802AD44
	subs r0, r2, #1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	mov r0, sp
	ldrh r1, [r0, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	beq _0802AD38
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0802AD38
	movs r0, #7
	strb r0, [r4, #4]
	strb r1, [r4, #1]
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
_0802AD38:
	movs r0, #0
	strb r0, [r4, #5]
	mov r0, sp
	ldrh r0, [r0, #4]
	strb r0, [r4, #2]
	b _0802AD48
_0802AD44:
	subs r0, #1
	strb r0, [r4, #5]
_0802AD48:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802AD6A
	cmp r0, #0
	bne _0802AD66
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0802AD62
	movs r0, #1
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
_0802AD62:
	movs r0, #0
	b _0802AD68
_0802AD66:
	subs r0, #1
_0802AD68:
	strb r0, [r4, #4]
_0802AD6A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0802AD7C
	cmp r0, #0
	bne _0802AD78
	movs r0, #0
	b _0802AD7A
_0802AD78:
	subs r0, #1
_0802AD7A:
	strb r0, [r4, #3]
_0802AD7C:
	ldrh r0, [r4, #0xa]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
