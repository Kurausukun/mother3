	.syntax unified
sub_0804E810:
	push {r4, lr}
	sub sp, #0xc
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #1
	bne _0804E822
	bl sub_0804FCB0
	b _0804E84E
_0804E822:
	ldr r4, _0804E858
	ldrb r3, [r4, #9]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x80
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080534C8
	ldrh r0, [r4]
	bl sub_08053E98
	strh r0, [r4, #6]
	ldr r1, _0804E85C
	adds r4, r4, r1
	strh r0, [r4]
_0804E84E:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E858: .4byte gUnknown_0201A1F2
_0804E85C: .4byte 0x00000322
	.syntax divided
