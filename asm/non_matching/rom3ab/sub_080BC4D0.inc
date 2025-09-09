	.syntax unified
sub_080BC4D0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	adds r6, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BC524
	ldr r0, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	b _080BC5B0
_080BC524:
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
	ldr r2, _080BC538
	mov sl, r2
_080BC530:
	lsls r5, r0, #1
	adds r7, r0, #1
	b _080BC54A
	.align 2, 0
_080BC538: .4byte gUnknown_080FA358
_080BC53C:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl tellStatusWoreOff
	movs r3, #1
	add r8, r3
_080BC54A:
	ldr r2, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	mov r3, sl
	adds r1, r5, r3
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BC53C
	adds r0, r7, #0
	cmp r0, #7
	bls _080BC530
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	ldr r2, _080BC5C0
	mov r0, r8
	cmp r0, #0
	ble _080BC58C
	adds r2, #1
_080BC58C:
	mov r0, sp
	ldr r3, [r3, #4]
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080BC5B0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC5C0: .4byte 0x00000139
	.syntax divided
