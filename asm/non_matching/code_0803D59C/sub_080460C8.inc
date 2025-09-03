	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080461C8
	mov r8, r0
	movs r0, #0x3c
	bl sub_080486A0
	movs r7, #1
	rsbs r7, r7, #0
	movs r6, #0xf
	str r6, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0x18
	movs r2, #0x30
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x3e
	bl sub_080486A0
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x18
	movs r2, #0x3c
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x3f
	bl sub_080486A0
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x18
	movs r2, #0x48
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #0x40
	bl sub_080486A0
	str r6, [sp]
	str r4, [sp, #4]
	movs r1, #0x18
	movs r2, #0x54
	adds r3, r7, #0
	bl sub_08047CDC
	ldr r0, _080461CC
	ldr r1, _080461D0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _080461BA
	ldr r4, _080461D4
	add r4, r8
	ldrb r0, [r4]
	movs r1, #0xc
	movs r2, #0x86
	bl sub_08046974
	ldrb r1, [r4]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	str r6, [sp]
	movs r5, #1
	str r5, [sp, #4]
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
	movs r0, #0x81
	bl sub_080486A0
	adds r4, #1
	ldr r1, _080461D8
	add r1, r8
	ldrb r1, [r1]
	muls r1, r4, r1
	adds r1, #0x26
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	movs r2, #0x87
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #0x44
	movs r2, #0x93
	adds r3, r7, #0
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #0x94
	movs r2, #0x93
	adds r3, r7, #0
	bl sub_08047CDC
_080461BA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080461C8: .4byte gUnknown_02018E28
_080461CC: .4byte gUnknown_0200F920
_080461D0: .4byte 0x00006478
_080461D4: .4byte 0x000013D5
_080461D8: .4byte 0x000097A0
	.syntax divided
