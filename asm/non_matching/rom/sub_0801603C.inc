	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080160C0
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	movs r2, #0
	mov sb, r2
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080160C4
	ldr r0, _080160C8
	adds r7, r4, r0
	ldrh r0, [r7]
	ldr r1, _080160CC
	adds r6, r4, r1
	ldrb r1, [r6]
	bl sub_080190B8
	bl sub_08001960
	bl sub_08005C4C
	movs r1, #0xb4
	lsls r1, r1, #1
	ldr r2, _080160D0
	adds r2, r2, r4
	mov r8, r2
	ldrh r2, [r2]
	ldr r0, _080160D4
	adds r4, r4, r0
	ldrh r3, [r4]
	movs r0, #0
	bl sub_08002E60
	strh r0, [r7]
	lsls r0, r0, #0x10
	ldr r1, _080160D8
	cmp r0, r1
	bls _080160E4
	ldrb r0, [r6]
	cmp r0, #3
	bne _080160E0
	ldr r1, _080160DC
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #7
	strb r0, [r6]
	mov r2, sb
	strh r2, [r7]
	mov r0, r8
	strh r2, [r0]
	b _080160F6
	.align 2, 0
_080160C0: .4byte gSomeBlend
_080160C4: .4byte gGame
_080160C8: .4byte 0x00005968
_080160CC: .4byte 0x0000595E
_080160D0: .4byte 0x00005962
_080160D4: .4byte 0x00005960
_080160D8: .4byte 0x01670000
_080160DC: .4byte 0x0001ED10
_080160E0:
	movs r0, #1
	b _080160F8
_080160E4:
	ldr r1, _08016104
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080160F6:
	movs r0, #0
_080160F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016104: .4byte 0x0001ED10
	.syntax divided
