	.syntax unified
sub_08046510:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r5, _080465E4
	ldr r0, _080465E8
	adds r6, r5, r0
	ldrb r0, [r6]
	movs r1, #0xc
	movs r2, #0x86
	bl sub_08046974
	ldrb r1, [r6]
	movs r0, #2
	bl get_misctext_msg
	adds r7, r0, #0
	movs r1, #0xf
	mov sb, r1
	str r1, [sp]
	movs r2, #1
	mov r8, r2
	str r2, [sp, #4]
	movs r1, #0x26
	movs r2, #0x87
	movs r3, #9
	bl sub_08047CDC
	adds r0, r7, #0
	movs r1, #9
	bl sub_08048748
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080465EC
	ldrb r1, [r6]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #0xa]
	ldr r2, _080465F0
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x7e
	bl sub_080486A0
	adds r7, r0, #0
	ldr r0, _080465F4
	adds r5, r5, r0
	ldrb r0, [r5]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, #0x26
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #0x87
	bl sub_08047F28
	movs r0, #0x7f
	bl sub_080486A0
	movs r4, #1
	rsbs r4, r4, #0
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0x26
	movs r2, #0x93
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0x80
	movs r2, #0x93
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #0xb2
	movs r2, #0x93
	adds r3, r4, #0
	bl sub_08047CDC
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080465E4: .4byte gSomeBlend
_080465E8: .4byte 0x000041D5
_080465EC: .4byte gGoodsInfo
_080465F0: .4byte 0x000044F0
_080465F4: .4byte 0x0000C5A0
	.syntax divided
