	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r4, _08051B30
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #5
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08052208
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	adds r1, r5, #0
	bl sub_08051C38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08051B38
	add r6, sp, #8
	adds r0, r6, #0
	bl sub_08051BDC
	ldr r7, _08051B34
	mov r0, sp
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08001B18
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08052208
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	adds r1, r5, #0
	bl sub_08051C38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08051B38
	adds r0, r6, #0
	bl sub_08051C28
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r7, r0
	mov r0, sp
	adds r2, r5, #0
	bl sub_08001B18
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08052208
	mov r0, sp
	adds r1, r5, #0
	bl sub_08051C38
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08051B38
	adds r0, r6, #0
	bl nullsub_24
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r7, r0
	mov r0, sp
	adds r2, r5, #0
	bl sub_08001B18
	movs r0, #1
	b _08051B3A
	.align 2, 0
_08051B30: .4byte 0xFFFFF000
_08051B34: .4byte gUnknown_0200FD90
_08051B38:
	movs r0, #0
_08051B3A:
	movs r3, #0x80
	lsls r3, r3, #5
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
