    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BF2BC
	ldr r1, [r5, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r4, r1, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r6, r5, r0
	adds r3, #0x90
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0x64
	bl sub_0807066C
	movs r1, #1
	cmp r1, r0
	bge _080BF2B2
	adds r1, r0, #0
_080BF2B2:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	bl _call_via_r2
	b _080BF34A
_080BF2BC:
	movs r3, #0
	mov r8, r3
	movs r0, #0
	add r1, sp, #0xc
	mov sb, r1
	ldr r2, _080BF2D0 @ =gUnknown_080FB068
	mov sl, r2
_080BF2CA:
	lsls r6, r0, #1
	adds r7, r0, #1
	b _080BF2E2
	.align 2, 0
_080BF2D0: .4byte gUnknown_080FB068
_080BF2D4:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl tellStatusWoreOff
	movs r3, #1
	add r8, r3
_080BF2E2:
	ldr r2, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sl
	adds r1, r6, r3
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BF2D4
	adds r0, r7, #0
	cmp r0, #7
	bls _080BF2CA
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	movs r2, #0xaa
	lsls r2, r2, #1
	mov r0, r8
	cmp r0, #0
	ble _080BF326
	adds r2, #2
_080BF326:
	mov r0, sp
	ldr r3, [r3, #4]
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_080BF34A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided
