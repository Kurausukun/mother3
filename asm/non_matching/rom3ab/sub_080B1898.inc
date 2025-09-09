	.syntax unified
sub_080B1898:
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl onSuccess__6ActionP4Unit
	movs r0, #0xc7
	lsls r0, r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	ldr r3, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _080B18EC
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B18EC: .4byte 0x00000482
	.syntax divided
