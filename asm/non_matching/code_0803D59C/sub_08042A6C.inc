	.syntax unified
sub_08042A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	movs r0, #0
	bl sub_08054FE0
	bl sub_080552E4
	lsls r0, r0, #0x10
	ldr r7, _08042AB8
	lsrs r0, r0, #0xe
	ldr r1, _08042ABC
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r7, #0
	bl sub_08046CE8
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #0
	mov r8, r0
	movs r0, #3
	strb r0, [r1]
	mov r1, sb
	ldrh r0, [r1, #0xa]
	cmp r0, #1
	beq _08042B50
	cmp r0, #1
	bgt _08042AC0
	cmp r0, #0
	beq _08042AC6
	b _08042B72
	.align 2, 0
_08042AB8: .4byte gUnknown_0201A55C
_08042ABC: .4byte gUnknown_080C6B1C
_08042AC0:
	cmp r0, #2
	beq _08042B5A
	b _08042B72
_08042AC6:
	ldr r2, _08042B44
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _08042B48
	strh r0, [r1]
	ldrh r0, [r1, #2]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #0x34
	bl sub_080486A0
	movs r6, #1
	rsbs r6, r6, #0
	movs r4, #7
	str r4, [sp]
	movs r5, #1
	str r5, [sp, #4]
	movs r1, #0x2a
	movs r2, #0x86
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x50
	movs r2, #0x92
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x7e
	movs r2, #0x92
	adds r3, r6, #0
	bl sub_08047CDC
	ldr r1, _08042B4C
	adds r0, r7, r1
	mov r3, sb
	ldrh r2, [r3, #4]
	movs r1, #0x2e
	muls r2, r1, r2
	adds r2, #0x48
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	mov r1, r8
	str r1, [sp, #4]
	movs r1, #4
	movs r3, #0x92
	bl sub_08046D2C
	b _08042B72
	.align 2, 0
_08042B44: .4byte 0xFFFFBACC
_08042B48: .4byte 0x00001844
_08042B4C: .4byte 0xFFFFFCB4
_08042B50:
	adds r0, r7, #0
	subs r0, #0x3c
	bl sub_08054130
	b _08042B72
_08042B5A:
	ldr r2, _08042B80
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _08042B84
	strh r0, [r1]
	ldrh r0, [r1, #2]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	mov r3, r8
	strh r3, [r1, #4]
_08042B72:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042B80: .4byte 0xFFFFBACC
_08042B84: .4byte 0x00001844
	.syntax divided
