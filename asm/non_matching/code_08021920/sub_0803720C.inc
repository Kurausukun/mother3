	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0803725C
	ldrh r1, [r2]
	ldr r3, _08037260
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r2, #2]
	mov r0, sp
	strh r1, [r0, #2]
	ldr r0, [sp, #4]
	ands r0, r3
	str r0, [sp, #4]
	movs r1, #1
	cmp r7, #5
	bne _08037240
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_08037240:
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r6, #0
	mov sb, r0
	mov r4, sp
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
_08037250:
	cmp r7, #5
	bne _08037264
	ldrh r0, [r4, #2]
	subs r0, #1
	b _08037268
	.align 2, 0
_0803725C: .4byte gUnknown_02001020
_08037260: .4byte 0xFFFF0000
_08037264:
	ldrh r0, [r4, #2]
	adds r0, #1
_08037268:
	strh r0, [r4, #2]
	mov r5, sp
	mov r0, sp
	bl sub_080372D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080372B6
	mov r0, sp
	mov r1, sb
	bl sub_08037330
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080372B6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080372C8
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r2, [r5, #2]
	strh r2, [r1, #2]
	ldr r0, _080372CC
	ldr r3, _080372D0
	adds r1, r0, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r8
	beq _080372A8
	cmp r0, r6
	ble _080372B6
_080372A8:
	ldr r0, _080372D4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _08037250
_080372B6:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080372C8: .4byte gUnknown_02001020
_080372CC: .4byte gGame
_080372D0: .4byte 0x0000845E
_080372D4: .4byte gUnknown_0200101C
	.syntax divided
