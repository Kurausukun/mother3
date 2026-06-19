	.syntax unified
sub_080B2634:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x1c
	ldr r1, [r0, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r4, r1, r2
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r0, r5
	ldr r2, _080B26B8
	mov r8, r2
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r2, r1, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x18
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
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B26B8: .4byte 0x000003A5
	.syntax divided
