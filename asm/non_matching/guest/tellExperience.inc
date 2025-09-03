	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	mov sb, r1
	bl metalMonkeyCheck
	mov r0, sb
	cmp r0, #0
	bgt _08060B6E
	b _08060CE8
_08060B6E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060B84
	b _08060CE8
_08060B84:
	add r0, sp, #4
	bl __3Msg
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _08060C16
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7d
	mov r2, r8
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r0, sp, #4
	adds r1, r4, #0
	bl replace__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	b _08060C8C
_08060C16:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7e
	mov r2, r8
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r0, sp, #4
	adds r1, r4, #0
	bl replace__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_08060C8C:
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	movs r4, #0
	b _08060CCC
_08060CA2:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	mov r1, sb
	bl _call_via_r2
	adds r4, #1
_08060CCC:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08060CA2
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_08060CE8:
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
