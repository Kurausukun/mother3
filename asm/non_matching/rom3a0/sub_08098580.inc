	.syntax unified
sub_08098580:
	ldr r2, _08098610
	bl _call_via_r3
	add r1, sp, #0x1c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080985B2:
	ldr r2, [r4, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r3, _08098614
	adds r1, r4, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080985D2
	b _08098704
_080985D2:
	movs r0, #0x78
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bgt _0809861C
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098618
	bl _call_via_r3
	add r1, sp, #0x20
	b _0809868C
	.align 2, 0
_08098610: .4byte 0x00000673
_08098614: .4byte 0x00000F94
_08098618: .4byte 0x0000066B
_0809861C:
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bgt _08098644
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098640
	bl _call_via_r3
	add r1, sp, #0x24
	b _0809868C
	.align 2, 0
_08098640: .4byte 0x0000066C
_08098644:
	ldr r0, [sp, #0x34]
	cmp r0, #2
	bgt _0809866C
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098668
	bl _call_via_r3
	add r1, sp, #0x28
	b _0809868C
	.align 2, 0
_08098668: .4byte 0x0000066D
_0809866C:
	ldr r0, [sp, #0x34]
	cmp r0, #3
	bgt _080986A8
	ldr r2, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _080986A4
	bl _call_via_r3
	add r1, sp, #0x2c
_0809868C:
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _080986D8
	.align 2, 0
_080986A4: .4byte 0x0000066E
_080986A8:
	ldr r2, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r3, [r2, #4]
	adds r1, r4, r1
	ldr r2, _08098708
	bl _call_via_r3
	add r1, sp, #0x30
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080986D8:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809870C
_08098704:
	movs r0, #0
	b _08098718
	.align 2, 0
_08098708: .4byte 0x0000066F
_0809870C:
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x34]
	cmp r0, #4
	bgt _08098716
	b _08098224
_08098716:
	movs r0, #1
_08098718:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
