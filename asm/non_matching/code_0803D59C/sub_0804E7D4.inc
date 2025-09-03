	.syntax unified
sub_0804E7D4:
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804E7E6
	bl sub_0804FA5C
	b _0804E804
_0804E7E6:
	ldr r0, _0804E80C
	ldrb r3, [r0, #9]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	bl sub_080534C8
_0804E804:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_0804E80C: .4byte gUnknown_0201A1F2
	.syntax divided
