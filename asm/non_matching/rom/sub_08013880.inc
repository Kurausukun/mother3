	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xa0
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r0, sp
	movs r1, #0xa0
	bl memclear
	ldr r5, _080138A0
	movs r6, #0
	movs r4, #0
	b _080138C8
	.align 2, 0
_080138A0: .4byte gUnknown_0200BB40
_080138A4:
	cmp r4, r7
	beq _080138BC
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r5, #0
	movs r2, #4
	bl sub_08001B18
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080138BC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #4
	cmp r4, #0x27
	bhi _080138D2
_080138C8:
	ldrb r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080138A4
_080138D2:
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	mov r0, r8
	movs r2, #4
	bl sub_08001B18
	ldr r1, _080138F8
	mov r0, sp
	movs r2, #0xa0
	bl sub_08001B18
	add sp, #0xa0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080138F8: .4byte gUnknown_0200BB40
	.syntax divided
