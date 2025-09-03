	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	bl sub_080725E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080624C8
	movs r5, #0
	ldr r0, _080624C0
	ldrb r1, [r0, #5]
	cmp r5, r1
	blt _0806246E
	b _0806258C
_0806246E:
	mov r8, r0
	mov r7, sp
	add r6, sp, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
_0806247A:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	lsls r2, r5, #1
	mov r1, r8
	adds r1, #0xc
	adds r2, r2, r1
	ldr r3, _080624C4
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #1
	strh r2, [r7]
	movs r3, #0x20
	strh r3, [r7, #2]
	ldr r2, [sp]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #4]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	mov r0, r8
	ldrb r0, [r0, #5]
	cmp r5, r0
	blt _0806247A
	b _0806258C
	.align 2, 0
_080624C0: .4byte gEncounter
_080624C4: .4byte 0xFFFFFF00
_080624C8:
	bl IsBossBattle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08062526
	bl sub_08072698
	adds r7, r0, #0
	movs r5, #0
	ldrb r1, [r7, #1]
	cmp r5, r1
	bge _0806258C
	add r2, sp, #8
	mov r8, r2
	add r6, sp, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
_080624EE:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	adds r1, r7, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	movs r3, #0x88
	lsls r3, r3, #1
	mov r2, r8
	strh r3, [r2]
	movs r3, #0x20
	strh r3, [r2, #2]
	ldr r2, [sp, #8]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #0xc]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	ldrb r0, [r7, #1]
	cmp r5, r0
	blt _080624EE
	b _0806258C
_08062526:
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806258C
	movs r5, #0
	ldr r0, _0806259C
	ldrb r1, [r0, #5]
	cmp r5, r1
	bge _0806258C
	mov r8, r0
	add r7, sp, #0x10
	add r6, sp, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
_08062548:
	mov r3, sb
	ldr r4, [r3, #0x1c]
	adds r4, #0xa0
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r0, sb
	lsls r2, r5, #1
	mov r1, r8
	adds r1, #0xc
	adds r2, r2, r1
	ldr r3, _080625A0
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x88
	lsls r2, r2, #1
	strh r2, [r7]
	movs r3, #0x20
	strh r3, [r7, #2]
	ldr r2, [sp, #0x10]
	mov r3, sl
	strh r3, [r6]
	strh r3, [r6, #2]
	ldr r3, [sp, #0x14]
	ldr r4, [r4, #4]
	bl _call_via_r4
	adds r5, #1
	mov r0, r8
	ldrb r0, [r0, #5]
	cmp r5, r0
	blt _08062548
_0806258C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806259C: .4byte gEncounter
_080625A0: .4byte 0xFFFFFF00
	.syntax divided
