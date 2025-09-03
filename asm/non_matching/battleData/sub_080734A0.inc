    .syntax unified
sub_080734A0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	mov r8, r3
	mov r0, sp
	bl __3Msg
	movs r6, #0
	add r7, sp, #0xc
	b _080735B2
_080734C0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734DC @ =0x0000FF10
	cmp r1, r0
	bne _080734E0
	mov r0, sp
	mov r1, sb
	bl sub_0806E374__3MsgRC3Msg
	b _080735B0
	.align 2, 0
_080734DC: .4byte 0x0000FF10
_080734E0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734FC @ =0x0000FF11
	cmp r1, r0
	bne _08073500
	mov r0, sp
	mov r1, r8
	bl sub_0806E374__3MsgRC3Msg
	b _080735B0
	.align 2, 0
_080734FC: .4byte 0x0000FF11
_08073500:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	ldr r5, _0807351C @ =0x0000FF12
	cmp r0, r5
	bne _08073520
	mov r0, sp
	ldr r1, [sp, #0x38]
	bl sub_0806E374__3MsgRC3Msg
	b _080735B0
	.align 2, 0
_0807351C: .4byte 0x0000FF12
_08073520:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	cmp r0, r5
	bls _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073554 @ =0x0000FF21
	cmp r1, r0
	bhi _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	adds r1, #0xed
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	b _0807356C
	.align 2, 0
_08073554: .4byte 0x0000FF21
_08073558:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073584 @ =0x0000FFE0
	cmp r1, r0
	bne _08073588
	adds r0, r7, #0
	movs r1, #2
_0807356C:
	bl createPlayerName__FUs
	mov r0, sp
	adds r1, r7, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	b _080735B0
	.align 2, 0
_08073584: .4byte 0x0000FFE0
_08073588:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _0807359C @ =0x0000FFE1
	cmp r1, r0
	bne _080735A0
	adds r6, #1
	b _080735B0
	.align 2, 0
_0807359C: .4byte 0x0000FFE1
_080735A0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	mov r0, sp
	bl sub_0806E34C
_080735B0:
	adds r6, #1
_080735B2:
	adds r0, r4, #0
	bl len__3Msg
	cmp r6, r0
	bge _080735BE
	b _080734C0
_080735BE:
	mov r0, sl
	mov r1, sp
	bl __3MsgRC3Msg
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    .syntax divided
