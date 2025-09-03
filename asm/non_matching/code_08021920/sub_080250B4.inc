	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	bl sub_08025168
	adds r5, r0, #0
	cmp r5, #0
	beq _0802515A
	ldr r1, _08025120
	ldr r0, _08025124
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x22
	ldrb r0, [r6]
	orrs r0, r2
	strb r0, [r6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x20]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	mov r0, r8
	strh r0, [r5]
	strh r4, [r5, #2]
	adds r4, r5, #4
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x1a
	bl sub_08001B54
	ldrh r1, [r7]
	ldr r0, _08025128
	cmp r1, r0
	bne _0802512C
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080223F4
	b _08025146
	.align 2, 0
_08025120: .4byte gSomeBlend
_08025124: .4byte 0x0000566C
_08025128: .4byte 0x0000FF23
_0802512C:
	ldr r0, _08025164
	cmp r1, r0
	bne _0802513C
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	adds r7, #2
_0802513C:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x1a
	bl sub_08001B18
_08025146:
	adds r1, r5, #0
	adds r1, #0x1c
	adds r0, r4, #0
	bl sub_08023054
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	ldrh r1, [r5]
	subs r1, r1, r0
	strh r1, [r5]
_0802515A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025164: .4byte 0x0000FF0B
	.syntax divided
