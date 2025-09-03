	.syntax unified
sub_0804631C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	ldr r0, _08046344
	ldr r1, _08046348
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0804634C
	movs r0, #0xb9
	bl sub_080486A0
	adds r4, r0, #0
	movs r1, #0x1c
	movs r2, #0x87
	bl sub_08047F28
	b _080463DE
	.align 2, 0
_08046344: .4byte gUnknown_0200F920
_08046348: .4byte 0x00006478
_0804634C:
	ldr r5, _080463EC
	ldr r2, _080463F0
	adds r4, r5, r2
	ldrb r0, [r4]
	movs r1, #0xc
	movs r2, #0x86
	bl sub_08046974
	ldrb r1, [r4]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #0xf
	mov r8, r0
	str r0, [sp]
	movs r6, #1
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x26
	movs r2, #0x87
	movs r3, #9
	bl sub_08047CDC
	adds r0, r4, #0
	movs r1, #9
	bl sub_08048748
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x80
	bl sub_080486A0
	adds r4, #1
	ldr r1, _080463F4
	adds r5, r5, r1
	ldrb r1, [r5]
	muls r1, r4, r1
	adds r1, #0x26
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	movs r2, #0x87
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #0x44
	movs r2, #0x93
	adds r3, r4, #0
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	movs r1, #0x94
	movs r2, #0x93
	adds r3, r4, #0
	bl sub_08047CDC
_080463DE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080463EC: .4byte gSomeBlend
_080463F0: .4byte 0x000041D5
_080463F4: .4byte 0x0000C5A0
	.syntax divided
