	.syntax unified
sub_080BD9DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	movs r1, #0x54
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BDA98
	ldr r4, [r6, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r6, r5
	ldr r1, [r7, #0x1c]
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BDA98
	ldr r0, _080BDA90
	bl playSound
	movs r0, #0x46
	adds r1, r6, #0
	adds r2, r6, #0
	bl PlayAnimation
	ldr r0, [r7, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	ldr r1, _080BDA94
	mov r8, r1
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0xc
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	mov r0, sp
	ldr r5, [r5, #4]
	adds r1, r4, #0
	mov r2, r8
	adds r3, r6, #0
	bl _call_via_r5
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
	b _080BDAA0
	.align 2, 0
_080BDA90: .4byte 0x0000050A
_080BDA94: .4byte 0x000004F3
_080BDA98:
	adds r0, r7, #0
	adds r1, r6, #0
	bl tellResisted__6ActionP4Unit
_080BDAA0:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
