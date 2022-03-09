    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r6, r2, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	movs r7, #0
	movs r5, #0
	movs r4, #0
	ldr r0, _0807A224 @ =0x0000FF01
	mov sb, r0
	b _0807A22C
	.align 2, 0
_0807A224: .4byte 0x0000FF01
_0807A228:
	adds r7, r5, #1
_0807A22A:
	adds r5, #1
_0807A22C:
	mov r0, sp
	bl sub_0806E414__3Msg
	cmp r5, r0
	bge _0807A24A
	mov r0, sp
	adds r1, r5, #0
	bl sub_0806E334__3Msgi
	ldrh r0, [r0]
	cmp r0, sb
	bne _0807A22A
	adds r4, #1
	cmp r4, r6
	ble _0807A228
_0807A24A:
	adds r4, #1
	cmp r4, r6
	ble _0807A26C
	mov r0, sp
	adds r1, r7, #0
	bl sub_0806E334__3Msgi
	adds r1, r0, #0
	subs r2, r5, r7
	mov r0, r8
	bl __3MsgPCvUi
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _0807A27A
_0807A26C:
	mov r0, r8
	bl __3Msg
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0807A27A:
	mov r0, r8
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
