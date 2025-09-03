	.syntax unified
sub_08042D48:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r6, _08042EDC
	movs r0, #0xf
	mov r8, r0
	str r0, [sp]
	movs r7, #1
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x34
	movs r2, #0xc
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r0, r6, #0
	adds r0, #0x20
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x34
	movs r2, #0x2c
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r0, r6, #0
	adds r0, #0x40
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	movs r1, #0x34
	movs r2, #0x4c
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r0, r6, #0
	adds r0, #0x60
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x34
	movs r2, #0x6c
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r0, r6, #0
	adds r0, #0x80
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	movs r1, #0xa4
	movs r2, #0xc
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	movs r0, #0xe7
	bl sub_080486A0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0x28
	mov r3, sb
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r5, r6, #0
	adds r5, #0xa0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08048748
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xd
	movs r4, #0xd4
	subs r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x32
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	movs r0, #0xe8
	bl sub_080486A0
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0x48
	mov r3, sb
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	adds r5, #0x20
	adds r0, r5, #0
	movs r1, #9
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x52
	movs r3, #9
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	movs r0, #0xe9
	bl sub_080486A0
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x88
	movs r2, #0x68
	mov r3, sb
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldr r0, _08042EE0
	movs r2, #0x90
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #0x28
	bl sub_080486A0
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0xbc
	movs r2, #0x72
	mov r3, sb
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldr r2, _08042EE4
	adds r1, r6, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08042EEC
	subs r0, #1
	strh r0, [r1]
	ldr r1, _08042EE8
	adds r0, r6, r1
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_08046D2C
	b _08042F38
	.align 2, 0
_08042EDC: .4byte gUnknown_0201AA5A
_08042EE0: .4byte gSave
_08042EE4: .4byte 0x0000049A
_08042EE8: .4byte 0xFFFFF7B6
_08042EEC:
	ldr r2, _08042F48
	subs r0, r6, #2
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	bl sub_080486A0
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	movs r1, #0x48
	movs r2, #0x87
	mov r3, sb
	bl sub_08047CDC
	movs r0, #1
	bl sub_08047E04
	ldr r1, _08042F4C
	adds r0, r6, r1
	mov r2, sl
	ldrh r1, [r2, #4]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r2, r2, r1
	asrs r2, r2, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #3
	movs r3, #0x92
	bl sub_08046D2C
_08042F38:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042F48: .4byte gUnknown_080C69CC
_08042F4C: .4byte 0xFFFFF7B6
	.syntax divided
