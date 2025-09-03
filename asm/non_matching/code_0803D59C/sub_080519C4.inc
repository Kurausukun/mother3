	.syntax unified
	push {r4, lr}
	ldr r4, _080519F4
	add sp, r4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	mov r0, sp
	bl memclear
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08052208
	mov r0, sp
	bl sub_08051A08
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080519F8
	movs r0, #1
	b _080519FA
	.align 2, 0
_080519F4: .4byte 0xFFFFF000
_080519F8:
	movs r0, #0
_080519FA:
	movs r3, #0x80
	lsls r3, r3, #5
	add sp, r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
