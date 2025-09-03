	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __3Msg
	movs r5, #0
	b _080852CA
_080851C4:
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	add r0, sp, #0xc
	bl sub_0806E34C
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080853C0
	cmp r1, r0
	beq _080851F8
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080853C4
	adds r2, r5, #1
	mov sl, r2
	cmp r1, r0
	bne _080852C8
_080851F8:
	mov r7, sp
	ldr r0, [sp, #4]
	adds r0, #1
	mov r8, r0
	ldr r0, [sp]
	adds r5, #1
	mov sl, r5
	cmp r0, r8
	bge _080852AC
	mov r1, r8
	lsls r0, r1, #1
	movs r1, #4
	cmp r1, r0
	bge _08085216
	adds r1, r0, #0
_08085216:
	mov r8, r1
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, #4
	bl __builtin_vec_new
	adds r1, r0, #4
	mov r2, r8
	str r2, [r0]
	adds r6, r1, #0
	adds r5, r6, #0
	mov r4, r8
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0808524E
	adds r1, r0, #0
_0808523C:
	adds r0, r5, #0
	str r1, [sp, #0x28]
	bl __3Msg
	adds r5, #0xc
	subs r4, #1
	ldr r1, [sp, #0x28]
	cmp r4, r1
	bne _0808523C
_0808524E:
	mov sb, r6
	ldr r6, [r7, #8]
	mov r5, sb
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0808526E
	adds r4, r0, #0
_0808525C:
	adds r0, r5, #0
	adds r5, #0xc
	adds r1, r6, #0
	adds r6, #0xc
	bl replace__3MsgRC3Msg
	subs r4, #1
	cmp r4, #0
	bne _0808525C
_0808526E:
	ldr r2, [r7, #8]
	cmp r2, #0
	beq _080852A4
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _0808529C
_08085284:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r7, #8]
	cmp r0, r4
	bne _08085284
_0808529C:
	ldr r0, [r7, #8]
	subs r0, #4
	bl __builtin_vec_delete
_080852A4:
	mov r0, r8
	str r0, [r7]
	mov r1, sb
	str r1, [r7, #8]
_080852AC:
	ldr r1, [r7, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r7, #8]
	adds r0, r0, r2
	adds r1, #1
	str r1, [r7, #4]
	add r1, sp, #0xc
	bl replace__3MsgRC3Msg
	add r0, sp, #0xc
	bl sub_0806E344
_080852C8:
	mov r5, sl
_080852CA:
	ldr r0, [sp, #0x20]
	bl len__3Msg
	cmp r5, r0
	bge _080852D6
	b _080851C4
_080852D6:
	add r0, sp, #0xc
	bl len__3Msg
	cmp r0, #0
	ble _080853A0
	mov r7, sp
	ldr r0, [sp, #4]
	adds r0, #1
	mov r8, r0
	ldr r0, [sp]
	cmp r0, r8
	bge _0808538A
	mov r2, r8
	lsls r1, r2, #1
	movs r0, #4
	cmp r0, r1
	bge _080852FA
	adds r0, r1, #0
_080852FA:
	mov r8, r0
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, #4
	bl __builtin_vec_new
	mov r1, r8
	stm r0!, {r1}
	adds r6, r0, #0
	adds r5, r6, #0
	mov r4, r8
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0808532C
	mov sb, r0
_0808531E:
	adds r0, r5, #0
	bl __3Msg
	adds r5, #0xc
	subs r4, #1
	cmp r4, sb
	bne _0808531E
_0808532C:
	mov sb, r6
	ldr r6, [r7, #8]
	mov r5, sb
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _0808534C
	adds r4, r0, #0
_0808533A:
	adds r0, r5, #0
	adds r5, #0xc
	adds r1, r6, #0
	adds r6, #0xc
	bl replace__3MsgRC3Msg
	subs r4, #1
	cmp r4, #0
	bne _0808533A
_0808534C:
	ldr r2, [r7, #8]
	cmp r2, #0
	beq _08085382
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _0808537A
_08085362:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r7, #8]
	cmp r0, r4
	bne _08085362
_0808537A:
	ldr r0, [r7, #8]
	subs r0, #4
	bl __builtin_vec_delete
_08085382:
	mov r0, r8
	str r0, [r7]
	mov r1, sb
	str r1, [r7, #8]
_0808538A:
	ldr r1, [r7, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r7, #8]
	adds r0, r0, r2
	adds r1, #1
	str r1, [r7, #4]
	add r1, sp, #0xc
	bl replace__3MsgRC3Msg
_080853A0:
	movs r5, #0
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _0808544A
	add r2, sp, #0x18
	mov sb, r2
_080853AC:
	movs r7, #0
	movs r6, #0
	lsls r0, r5, #1
	mov r8, r0
	lsls r1, r5, #2
	mov sl, r1
	adds r2, r5, #1
	str r2, [sp, #0x24]
	b _080853E0
	.align 2, 0
_080853C0: .4byte 0x0000FF01
_080853C4: .4byte 0x0000FF02
_080853C8:
	ldr r0, [sp, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl sub_0806E334__3Msgi
	ldrh r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	cmp r0, r1
	bhi _080853DE
	adds r7, #1
_080853DE:
	adds r6, #1
_080853E0:
	mov r2, r8
	adds r0, r2, r5
	lsls r4, r0, #2
	ldr r0, [sp, #8]
	adds r0, r0, r4
	bl len__3Msg
	cmp r6, r0
	blt _080853C8
	movs r0, #0xf
	subs r0, r0, r7
	lsls r2, r0, #2
	adds r2, r2, r0
	movs r6, #0
	mov r7, sl
	adds r0, r7, r5
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r8, r0
	adds r0, #0x30
	ldr r1, [sp, #0x1c]
	adds r3, r1, r0
	adds r5, r2, #0
	adds r5, #0x2d
	adds r4, #0x30
_08085414:
	movs r0, #0x58
	muls r0, r6, r0
	ldr r1, [sp, #0x1c]
	add r1, r8
	adds r1, r0, r1
	ldr r2, [r1, #0x4c]
	adds r2, #0x88
	adds r0, r3, r0
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	mov r1, sb
	strh r5, [r1]
	strh r4, [r1, #2]
	ldr r2, [r2, #4]
	str r3, [sp, #0x2c]
	bl _call_via_r2
	adds r5, #0xa
	adds r6, #1
	ldr r3, [sp, #0x2c]
	cmp r6, #0xe
	ble _08085414
	ldr r5, [sp, #0x24]
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _080853AC
_0808544A:
	movs r0, #0
	ldr r2, [sp, #0x1c]
	str r0, [r2, #0x2c]
	strh r0, [r2, #0x28]
	strh r0, [r2, #0x2a]
	movs r6, #0
	b _08085530
_08085458:
	ldr r0, [sp, #0x20]
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _0808547C
	cmp r1, r0
	beq _080854C0
	cmp r1, r0
	bgt _0808548C
	subs r0, #0x2f
	cmp r1, r0
	beq _080854B8
	cmp r1, r0
	bgt _08085480
	cmp r1, #0
	beq _080854A8
	b _080854E8
	.align 2, 0
_0808547C: .4byte 0x0000FF30
_08085480:
	ldr r0, _08085488
	cmp r1, r0
	beq _080854B0
	b _080854E8
	.align 2, 0
_08085488: .4byte 0x0000FF02
_0808548C:
	ldr r0, _080854A4
	cmp r1, r0
	beq _080854D0
	cmp r1, r0
	blt _080854C8
	adds r0, #1
	cmp r1, r0
	beq _080854D8
	adds r0, #1
	cmp r1, r0
	beq _080854E0
	b _080854E8
	.align 2, 0
_080854A4: .4byte 0x0000FF32
_080854A8:
	ldr r0, [sp, #0x1c]
	bl sub_080855B4
	b _0808552E
_080854B0:
	ldr r0, [sp, #0x1c]
	movs r1, #0
	bl sub_08085694
_080854B8:
	ldr r0, [sp, #0x1c]
	bl sub_0808558C
	b _0808552E
_080854C0:
	movs r0, #5
	bl setsleep
	b _0808552E
_080854C8:
	movs r0, #0xa
	bl setsleep
	b _0808552E
_080854D0:
	movs r0, #0x1e
	bl setsleep
	b _0808552E
_080854D8:
	movs r0, #0x3c
	bl setsleep
	b _0808552E
_080854E0:
	movs r0, #0x5a
	bl setsleep
	b _0808552E
_080854E8:
	ldr r7, [sp, #0x1c]
	ldrh r2, [r7, #0x28]
	ldrh r1, [r7, #0x2a]
	movs r0, #0x58
	muls r1, r0, r1
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r0, r4, #5
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r0, r4, r7
	adds r0, r1, r0
	ldr r5, [r0, #0x4c]
	adds r5, #0xd0
	adds r4, #0x30
	adds r4, r7, r4
	adds r4, r4, r1
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [sp, #0x1c]
	bl sub_080855B4
	ldr r0, [sp, #0x1c]
	bl sub_08085688
_0808552E:
	adds r6, #1
_08085530:
	ldr r0, [sp, #0x20]
	bl len__3Msg
	cmp r6, r0
	blt _08085458
	add r0, sp, #0xc
	movs r1, #2
	bl _._3Msg
	mov r5, sp
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0808557A
	subs r0, r2, #4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r2, r0
	cmp r2, r4
	beq _08085572
_0808555A:
	subs r4, #0xc
	ldr r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	ldr r0, [r5, #8]
	cmp r0, r4
	bne _0808555A
_08085572:
	ldr r0, [r5, #8]
	subs r0, #4
	bl __builtin_vec_delete
_0808557A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
