	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _08037190
	ldrh r1, [r2]
	ldr r3, _08037194
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r2, #2]
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #1
	cmp r7, #3
	bne _08037164
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_08037164:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1, #2]
	movs r6, #0
	mov sl, r1
	mov r4, sp
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	mov r8, r2
_08037184:
	cmp r7, #3
	bne _08037198
	ldrh r0, [r4]
	subs r0, #1
	b _0803719C
	.align 2, 0
_08037190: .4byte gUnknown_02001020
_08037194: .4byte 0xFFFF0000
_08037198:
	ldrh r0, [r4]
	adds r0, #1
_0803719C:
	strh r0, [r4]
	mov r5, sp
	mov r0, sp
	bl sub_080372D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080371EC
	mov r0, sp
	mov r1, sl
	bl sub_08037330
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080371EC
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r4]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r5, #2]
	mov r2, r8
	strh r0, [r2, #2]
	ldr r0, _08037200
	ldr r3, _08037204
	adds r2, r0, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, sb
	beq _080371DE
	cmp r0, r6
	ble _080371EC
_080371DE:
	ldr r0, _08037208
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _08037184
_080371EC:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037200: .4byte gGame
_08037204: .4byte 0x0000845E
_08037208: .4byte gUnknown_0200101C
	.syntax divided
