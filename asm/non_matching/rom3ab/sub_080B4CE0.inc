	.syntax unified
sub_080B4CE0:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl onPlayAnim__6ActionP4Unitb
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x7c
	adds r1, r6, #0
	bl PlayAnimation
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x4c]
	movs r2, #1
	bl sub_08073D98
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080B4D70
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B4D70: .4byte 0x00000434
	.syntax divided
