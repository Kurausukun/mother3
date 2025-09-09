	.syntax unified
sub_080BD050:
	push {r4, lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r2, _080BD090
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r1, r4
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD090: .4byte 0x00000133
	.syntax divided
