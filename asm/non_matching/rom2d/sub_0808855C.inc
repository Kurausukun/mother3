	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r1, #0
	mov r8, r2
	adds r7, r3, #0
	ldr r6, [sp, #0x34]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	str r0, [sp, #0x10]
	movs r1, #0
	mov sb, r1
	mov r2, sb
	strh r2, [r0]
	ldr r3, [sp, #0x10]
	strh r2, [r3, #2]
	ldrh r4, [r7, #2]
	ldrh r0, [r6, #2]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r0, [r7]
	mov sl, r0
	ldrh r0, [r6]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #4
	adds r2, r5, #0
	bl sub_0806BB34
	ldr r0, [sp, #4]
	str r0, [sp]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bge _080885CA
	mov r0, sb
	strh r0, [r7, #2]
	mov r1, r8
	ldrh r0, [r1, #2]
	subs r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r6, #2]
	adds r0, r0, r4
	strh r0, [r6, #2]
_080885CA:
	ldr r3, [sp, #0x10]
	ldrh r2, [r3, #2]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	lsls r1, r2, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	ble _080885E2
	subs r1, r3, r2
	ldrh r0, [r6, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080885E2:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080885FE
	mov r3, sb
	strh r3, [r7]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080885FE:
	mov r0, sp
	ldr r3, [sp, #0xc]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _08088618
	subs r1, r1, r2
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r6]
_08088618:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
