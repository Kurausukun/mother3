	.syntax unified
sub_08099BE4:
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _08099C48
	adds r4, r5, r0
	ldr r2, [r4]
	movs r0, #3
	adds r1, r2, #0
	bl PlayAnimation
	ldr r4, [r4]
	movs r0, #0xa4
	movs r1, #0xba
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl hitPlayer
	ldr r3, [r5, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, _08099C4C
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
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
	movs r0, #1
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08099C48: .4byte 0x00000F94
_08099C4C: .4byte 0x0000064A
	.syntax divided
