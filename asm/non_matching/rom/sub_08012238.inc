	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r4, _08012260
	ldr r1, _08012264
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_0801B504
	adds r6, r0, #0
	ldr r0, _08012268
	adds r4, r4, r0
	movs r7, #0
	ldrb r0, [r6]
	b _080122F8
	.align 2, 0
_08012260: .4byte gGame
_08012264: .4byte 0x000067AC
_08012268: .4byte 0x00005BD0
_0801226C:
	adds r5, r6, #0
	ldrb r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	str r5, [r4]
	adds r0, r5, #0
	adds r0, #0x30
	str r0, [r4, #8]
	adds r5, #0xc
	str r5, [r4, #4]
	ldrb r0, [r6, #8]
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [r4, #8]
	ldrb r0, [r6, #9]
	lsls r0, r0, #2
	adds r5, r5, r0
	mov r0, sp
	ldrh r0, [r0]
	adds r1, r7, #1
	mov r8, r1
	adds r4, #0x10
	mov sb, r4
	cmp r0, #0
	beq _080122E8
	mov r4, sp
	adds r4, #2
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strh r0, [r4]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080122C2
	adds r0, r6, #4
	movs r1, #1
	bl sub_080263A4
	ldrh r1, [r4]
	orrs r1, r0
	strh r1, [r4]
_080122C2:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080122E8
	movs r4, #0
	ldrb r0, [r6, #8]
	cmp r4, r0
	bhs _080122E8
_080122D0:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801263C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #8]
	cmp r4, r1
	blo _080122D0
_080122E8:
	adds r6, r5, #0
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r4, sb
	cmp r7, #0x18
	bhi _080122FE
	ldrb r0, [r5]
_080122F8:
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801226C
_080122FE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
