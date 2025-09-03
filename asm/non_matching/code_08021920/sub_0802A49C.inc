	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	mov r1, sp
	adds r0, #0x3c
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, #0
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A4D8
	adds r0, r6, #0
	bl sub_0802B9E8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802A4DA
_0802A4D8:
	ldr r3, _0802A53C
_0802A4DA:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bhs _0802A556
	movs r2, #0x3c
	adds r2, r2, r5
	mov sb, r2
	mov sl, r0
_0802A4EA:
	movs r2, #0
	adds r0, #1
	mov r8, r0
_0802A4F0:
	mov r4, sb
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, r6
	bne _0802A540
	mov r0, sl
	strb r0, [r1]
	lsls r0, r2, #1
	adds r1, r5, #0
	adds r1, #0x4c
	adds r1, r1, r0
	movs r7, #0
	mov r4, sl
	strh r4, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802A54A
	adds r0, r5, #0
	adds r0, #0x34
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, r6
	bne _0802A54A
	adds r0, r5, #0
	adds r1, r2, #0
	str r3, [sp, #0x14]
	bl sub_0802BA68
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x14]
	cmp r0, #0
	beq _0802A54A
	strb r7, [r4]
	b _0802A54A
	.align 2, 0
_0802A53C: .4byte 0x0000FFFF
_0802A540:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A4F0
_0802A54A:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x10]
	cmp r0, r2
	blo _0802A4EA
_0802A556:
	adds r0, r5, #0
	bl sub_0802A574
	adds r0, r5, #0
	mov r1, sp
	bl sub_0802BA98
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
