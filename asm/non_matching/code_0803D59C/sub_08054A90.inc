	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r6, r4, #0
	bl sub_080546B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #1
	bls _08054AC2
	adds r2, r5, #0
	adds r2, #0x3c
	adds r7, r2, r4
	ldrb r0, [r7]
	cmp r0, sb
	beq _08054AC6
_08054AC2:
	movs r0, #0
	b _08054B20
_08054AC6:
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08055180
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	strb r2, [r7]
	lsls r1, r6, #1
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08055190
	adds r0, r5, #0
	mov r1, sp
	bl sub_080551B0
	adds r0, r5, #0
	bl sub_08052678
	adds r0, r5, #0
	mov r1, sb
	movs r2, #1
	bl sub_080546D8
	mov r1, r8
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08055190
	movs r0, #1
_08054B20:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
