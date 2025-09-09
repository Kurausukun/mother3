	.syntax unified
sub_080B0CFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
	ldr r0, _080B0D9C
	bl playSound
	add r1, sp, #0x18
	movs r0, #0xc8
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r7, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	add r2, sp, #0x1c
	adds r0, #0x38
	strh r0, [r2]
	strh r0, [r2, #2]
	movs r0, #0xb1
	movs r3, #0x1e
	bl sub_08072F9C
	adds r3, r0, #0
	cmp r3, #0
	beq _080B0D8E
	ldr r4, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r6, r5
	movs r0, #0xe9
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [r3, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sp
	ldr r4, [r4, #4]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x20
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
_080B0D8E:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0D9C: .4byte 0x0000055D
	.syntax divided
