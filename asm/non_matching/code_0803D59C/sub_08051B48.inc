	.syntax unified
sub_08051B48:
	push {r4, r5, lr}
	ldr r4, _08051BC8
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
	beq _08051BCC
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
	beq _08051BCC
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
	beq _08051BCC
	movs r0, #1
	b _08051BCE
	.align 2, 0
_08051BC8: .4byte 0xFFFFF000
_08051BCC:
	movs r0, #0
_08051BCE:
	movs r3, #0x80
	lsls r3, r3, #5
	add sp, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
