	.syntax unified
sub_08099994:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	movs r5, #0x96
	lsls r5, r5, #2
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	mov r8, r0
	add r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08099A80
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0xff
	movs r6, #0
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
	ldr r1, [r4, #0x1c]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl _call_via_r3
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r4, #0x1c]
	add r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099A84
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0x10
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	mov r0, sp
	movs r2, #0
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r0, [r4, #0x1c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099A80: .4byte 0x0000064B
_08099A84: .4byte 0x0000064C
	.syntax divided
