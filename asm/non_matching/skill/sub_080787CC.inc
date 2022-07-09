    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080787FA
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	b _08078818
_080787FA:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08078828
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
_08078818:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	b _08078BA2
_08078828:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	beq _08078842
	b _08078998
_08078842:
	adds r0, r7, #0
	movs r1, #2
	bl unitIsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08078854
	b _08078998
_08078854:
	bl getPartyInfo
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08078874
	b _08078998
_08078874:
	movs r0, #0xc3
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	ldr r3, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xc4
	lsls r2, r2, #1
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r6, r1
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
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	mov r8, r3
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0xbd
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080788F8
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0xbe
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807891E
_080788F8:
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0xa4
	movs r1, #0xba
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl hitPlayer
	b _08078966
_0807891E:
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0xe0
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r4, r6, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r5, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	movs r1, #0
	cmp r1, r0
	bge _0807895E
	adds r1, r0, #0
_0807895E:
	mov r0, sb
	movs r2, #1
	bl hitPlayer
_08078966:
	ldr r1, [r6, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #3
	adds r1, r5, #0
	bl playSeq
	b _08078BA2
_08078998:
	ldr r1, [r6, #0x1c]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #8
	bls _080789B2
	b _08078B6A
_080789B2:
	lsls r0, r0, #2
	ldr r1, _080789BC @ =_080789C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080789BC: .4byte _080789C0
_080789C0: @ jump table
	.4byte _080789E4 @ case 0
	.4byte _08078A00 @ case 1
	.4byte _08078A1C @ case 2
	.4byte _08078A38 @ case 3
	.4byte _08078A6A @ case 4
	.4byte _08078A9C @ case 5
	.4byte _08078AD2 @ case 6
	.4byte _08078B6A @ case 7
	.4byte _08078B26 @ case 8
_080789E4:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	b _08078B16
_08078A00:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	b _08078B16
_08078A1C:
	ldr r1, [r6, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	b _08078B16
_08078A38:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	b _08078B14
_08078A6A:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	b _08078B14
_08078A9C:
	ldr r1, [r6, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	b _08078B14
_08078AD2:
	ldr r1, [r6, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r6, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08078B0E
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	b _08078B14
_08078B0E:
	ldr r1, [r6, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
_08078B14:
	adds r1, r1, r3
_08078B16:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	b _08078B6A
_08078B26:
	ldr r1, [r6, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
_08078B6A:
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
_08078BA2:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
