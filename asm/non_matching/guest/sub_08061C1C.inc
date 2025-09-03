	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bgt _08061CB0
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r6, #0
	adds r2, #0x24
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #3
	mov sb, r2
	cmp r1, r0
	ble _08061C58
	adds r1, r0, #0
_08061C58:
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, r8
	bge _08061CB0
	mov r5, sb
	movs r0, #0
	mov sl, r0
_08061C76:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	adds r0, r6, #0
	bl sub_08061CC8
	ldr r2, [r5, #4]
	adds r7, r4, #1
	cmp sl, r2
	bge _08061CAA
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _08061CA4
_08061C9A:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061C9A
_08061CA4:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_08061CAA:
	adds r4, r7, #0
	cmp r4, r8
	blt _08061C76
_08061CB0:
	adds r1, r6, #0
	adds r1, #0x30
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
