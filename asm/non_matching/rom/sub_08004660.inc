	.syntax unified
sub_08004660:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	bl sub_08004F7C
	ldr r6, _08004724
	ldr r0, _08004728
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004686
	movs r0, #4
	bl sub_0801B5E8
_08004686:
	ldrb r7, [r6]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080046C8
	ldr r5, _0800472C
	adds r0, r5, #0
	bl get_flag
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl set_event_flag
	movs r0, #7
	strb r0, [r6]
	bl sub_08013EB8
	ldr r1, _08004730
	adds r0, r6, r1
	ldrb r0, [r0]
	bl sub_08007D94
	bl sub_08001960
	bl sub_08005C4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl set_event_flag
_080046C8:
	ldr r0, _08004734
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004738
	strh r1, [r0]
	bl sub_08005BFC
	ldr r2, _0800473C
	adds r0, r6, r2
	ldrh r0, [r0]
	bl sub_08007760
	bl sub_08005C14
	ldr r1, _08004740
	ldr r2, _08004744
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r2, _08004748
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #2]
	strh r0, [r1, #2]
	ldr r2, _0800474C
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #4]
	strh r0, [r1, #4]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004754
	cmp r7, #1
	beq _08004772
	bl sub_0802773C
	ldr r2, _08004750
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _08004764
	.align 2, 0
_08004724: .4byte gGame
_08004728: .4byte 0x00008494
_0800472C: .4byte 0x00000315
_08004730: .4byte 0x0000595C
_08004734: .4byte gUnknown_03004B00
_08004738: .4byte gUnknown_03004B02
_0800473C: .4byte 0x00005978
_08004740: .4byte gSomeBlend
_08004744: .4byte 0x0000679C
_08004748: .4byte 0x0000679E
_0800474C: .4byte 0x000067A0
_08004750: .4byte 0x000067C4
_08004754:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08004764
	movs r0, #6
	strb r0, [r6]
	bl sub_08013D38
_08004764:
	ldr r1, _0800477C
	ldr r2, _08004780
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004784
_08004772:
	ldr r1, _0800477C
	movs r0, #1
	strb r0, [r1]
	b _08004786
	.align 2, 0
_0800477C: .4byte gGame
_08004780: .4byte 0x00008494
_08004784:
	strb r7, [r1]
_08004786:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
