	.syntax unified
sub_08035600:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _08035648
	ldr r0, [sp]
	ands r0, r7
	orrs r0, r1
	str r0, [sp]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	mov r6, sp
	strh r3, [r6, #2]
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0803564C
	cmp r1, r0
	bne _08035634
	b _08035732
_08035634:
	cmp r1, r0
	bgt _08035656
	cmp r1, #0xa8
	beq _080356A8
	cmp r1, #0xa8
	bgt _08035650
	cmp r1, #0x27
	beq _0803567A
	b _0803577E
	.align 2, 0
_08035648: .4byte 0xFFFF0000
_0803564C: .4byte 0x000001D3
_08035650:
	cmp r1, #0xd9
	beq _08035706
	b _0803577E
_08035656:
	ldr r0, _0803566C
	cmp r1, r0
	bne _0803565E
	b _08035790
_0803565E:
	cmp r1, r0
	bgt _08035670
	subs r0, #3
	cmp r1, r0
	bne _0803566A
	b _08035790
_0803566A:
	b _0803577E
	.align 2, 0
_0803566C: .4byte 0x000001DF
_08035670:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	beq _08035758
	b _0803577E
_0803567A:
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _0803577E
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #6]
	lsrs r1, r1, #1
	adds r0, r0, r1
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _0803577E
	adds r0, r3, #4
	strh r0, [r6, #2]
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_080356A8:
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r2, r1
	bge _080356D0
	ldrh r0, [r4, #0x16]
	lsrs r0, r0, #1
	adds r0, r3, r0
	strh r0, [r6, #2]
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_080356D0:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4, #0x16]
	adds r0, #0x20
	add r2, sp, #4
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803577E
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	ldrh r5, [r5, #6]
	adds r0, r0, r5
	subs r1, r1, r0
	cmp r1, #0x30
	ble _08035790
	movs r0, #0
	b _080357C6
_08035706:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r6, #2]
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	adds r0, #0x20
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_08035732:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	subs r0, #0x28
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_08035758:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	subs r0, #0x28
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_0803577E:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08035790
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08035794
_08035790:
	movs r0, #1
	b _080357C6
_08035794:
	ldr r0, _080357B0
	ldrb r1, [r0, #0x11]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080357B4
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
	.align 2, 0
_080357B0: .4byte gGame
_080357B4:
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	adds r3, r4, #0
	bl sub_08035820
_080357C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080357C6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
