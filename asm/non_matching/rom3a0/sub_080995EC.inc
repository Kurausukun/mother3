	.syntax unified
sub_080995EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r4, #0
_080995F8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099616
	b _080997E0
_08099616:
	adds r4, #1
	cmp r4, #1
	ble _080995F8
	ldr r1, [r7, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809963A
	b _080997E0
_0809963A:
	ldr r1, [r7, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099692
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08099692:
	ldr r1, [r7, #0x1c]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997D8
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r4, #0xff
	movs r2, #0
	mov r8, r2
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xca
	lsls r2, r2, #3
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc4
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080997DC
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x14
	mov r2, r8
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080997E0
	movs r0, #1
	b _080997E2
	.align 2, 0
_080997D8: .4byte 0x0000064E
_080997DC: .4byte 0x00000651
_080997E0:
	movs r0, #0
_080997E2:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
