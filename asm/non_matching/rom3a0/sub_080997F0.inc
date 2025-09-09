	.syntax unified
sub_080997F0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r4, #0
_080997F8:
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
	beq _08099816
	b _08099988
_08099816:
	adds r4, #1
	cmp r4, #1
	ble _080997F8
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
	beq _0809983A
	b _08099988
_0809983A:
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
	bne _08099892
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
_08099892:
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
	movs r4, #0x96
	lsls r4, r4, #2
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r7, #0x1c]
	movs r6, #0x98
	lsls r6, r6, #2
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099980
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	movs r5, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl sub_080736B4
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r7, #0x1c]
	adds r3, r3, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099984
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r7, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r7, #0x1c]
	movs r0, #0x9e
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
	bne _08099988
	movs r0, #1
	b _0809998A
	.align 2, 0
_08099980: .4byte 0x0000064D
_08099984: .4byte 0x0000064F
_08099988:
	movs r0, #0
_0809998A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
