	.syntax unified
sub_0805B810:
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _0805B87C
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _0805B82E
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0805B82E
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldr r0, _0805B880
	cmp r1, r0
	beq _0805B8C4
_0805B82E:
	adds r4, r5, #0
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0805B884
	movs r0, #0x34
	ldrsh r2, [r4, r0]
	movs r0, #0x36
	ldrsh r3, [r4, r0]
	mov r1, sp
	mov r0, sp
	strh r2, [r0]
	strh r3, [r1, #2]
	ldrb r1, [r4, #1]
	movs r2, #0x38
	ldrsh r0, [r4, r2]
	movs r2, #0x3a
	ldrsh r3, [r4, r2]
	add r2, sp, #4
	strh r0, [r2]
	strh r3, [r2, #2]
	ldrb r3, [r4, #2]
	mov r0, sp
	bl sub_0805B8D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805B8C4
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl sub_0805B99C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805B8C4
	movs r0, #1
	b _0805B8C6
	.align 2, 0
_0805B87C: .4byte gEncounter
_0805B880: .4byte 0x0000015B
_0805B884:
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	movs r0, #0x3a
	ldrsh r2, [r5, r0]
	add r0, sp, #8
	strh r1, [r0]
	strh r2, [r0, #2]
	ldrb r1, [r5, #2]
	movs r2, #0x34
	ldrsh r3, [r5, r2]
	movs r2, #0x36
	ldrsh r4, [r5, r2]
	add r2, sp, #0xc
	strh r3, [r2]
	strh r4, [r2, #2]
	ldrb r3, [r5, #1]
	bl sub_0805B8D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805B8C4
	ldrb r0, [r5, #2]
	ldrb r1, [r5, #1]
	bl sub_0805B99C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805B8C4
	movs r0, #2
	b _0805B8C6
_0805B8C4:
	movs r0, #0
_0805B8C6:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
