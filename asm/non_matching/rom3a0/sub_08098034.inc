	.syntax unified
sub_08098034:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r7, #0x96
	lsls r7, r7, #2
	mov r0, sp
	movs r3, #1
	mov sb, r3
	strb r3, [r0]
	add r0, sp, #4
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xc8
	adds r2, r7, #0
	bl sub_08074518
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r5, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #2
	mov sl, r2
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080981FC
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r4, #0x7f
	movs r6, #0
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08098200
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x18
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_080736B4
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	adds r4, #0x81
	mov r0, sp
	mov r3, sb
	strb r3, [r0]
	mov r0, r8
	strb r6, [r0]
	movs r0, #0x90
	adds r1, r4, #0
	movs r2, #0x78
	movs r3, #1
	bl sub_08074518
	ldr r1, [r5, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc8
	bl _call_via_r2
	mov r0, sp
	mov r1, sb
	strb r1, [r0]
	mov r2, r8
	strb r6, [r2]
	movs r0, #0x90
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08074494
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08098204
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x1c
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x3c
	bl setsleep
	ldr r1, _08098208
	adds r4, r5, r1
	ldr r2, [r4]
	movs r0, #0x42
	adds r1, r2, #0
	bl PlayAnimation
	movs r0, #0x78
	bl setsleep
	movs r0, #0xf0
	lsls r0, r0, #2
	bl playSound
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0xf0
	bl setsleep
	ldr r2, [r4]
	movs r0, #0x43
	adds r1, r2, #0
	bl PlayAnimation
	movs r0, #0xb4
	bl setsleep
	ldr r3, [r5, #0x1c]
	add r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _0809820C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0x20
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x96
	lsls r0, r0, #1
	bl setsleep
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080981FC: .4byte 0x0000065B
_08098200: .4byte 0x0000065C
_08098204: .4byte 0x0000065D
_08098208: .4byte 0x00000F94
_0809820C: .4byte 0x0000065E
	.syntax divided
