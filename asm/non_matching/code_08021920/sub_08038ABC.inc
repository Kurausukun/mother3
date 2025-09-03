	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	adds r0, #2
	mov sb, r0
	movs r1, #9
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r7, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x1e
	lsrs r0, r0, #0xe
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _08038BCC
	ldr r1, _08038BD0
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r5, #0
	cmp r0, #0
	beq _08038B0A
	ldr r5, _08038BD4
_08038B0A:
	lsls r6, r6, #0x10
	mov r8, r6
	mov r0, r8
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r5, r8
	adds r2, r5, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #7
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	mov r0, sb
	adds r1, r3, #0
	movs r3, #9
	bl draw_ui_text
	movs r0, #1
	movs r1, #0
	bl sub_080225B4
	ldr r1, [sp, #0x18]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	ldr r0, _08038BD8
	mov sl, r0
	adds r0, r4, r0
	movs r1, #0x1d
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	adds r2, r5, #0
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r1, #0xe
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, sb
	movs r3, #3
	bl sub_0803D9A8
	movs r0, #0x3c
	add sl, r0
	add r4, sl
	adds r5, #0x16
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	movs r3, #3
	bl sub_0803D9A8
	adds r2, r7, #0
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	add r8, r1
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r3, r8
	bl sub_08038E80
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038BCC: .4byte gSomeBlend
_08038BD0: .4byte 0x000035BA
_08038BD4: .4byte 0x0000FFFD
_08038BD8: .4byte gUnknown_0200DE08
	.syntax divided
