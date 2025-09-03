	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #0
_08058B24:
	adds r0, r4, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r1, #1
	mov sl, r1
	adds r1, r4, #0
	adds r1, #0x54
	str r1, [sp]
	cmp r0, #0
	beq _08058BB0
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08058BB0
	ldrh r0, [r4, #0x3e]
	bl sub_08036D18
	ldrb r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r0, r0, #5
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x18
	ldr r7, [r4, #0x10]
	movs r3, #0
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08058BAA
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	cmp r6, sb
	bhi _08058BAA
_08058B7A:
	ldr r0, [r5]
	adds r1, r7, #0
	adds r2, r4, #0
	str r3, [sp, #4]
	bl sub_08001A14
	adds r7, r7, r4
	ldr r3, [sp, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, #8
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08058BAA
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, sb
	bls _08058B7A
_08058BAA:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_08058BB0:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r4, [sp]
	cmp r1, #0xf
	bls _08058B24
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
