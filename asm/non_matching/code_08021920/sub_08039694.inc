	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r0, sp
	strh r1, [r0]
	mov r3, sp
	adds r3, #2
	ldrh r0, [r0]
	adds r6, r3, #0
	cmp r0, #0
	beq _080396C4
	ldrh r0, [r4, #2]
	lsrs r0, r0, #9
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _080396D2
_080396C4:
	movs r2, #0
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080396D2
	movs r2, #1
_080396D2:
	strh r2, [r3]
	ldrh r0, [r6]
	cmp r0, #0
	beq _080396E8
	ldrh r0, [r5]
	cmp r0, ip
	beq _080396E4
	subs r0, #1
	b _08039720
_080396E4:
	strh r7, [r5]
	b _08039722
_080396E8:
	adds r3, r6, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080396FE
	ldrh r0, [r4, #2]
	lsrs r0, r0, #8
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _0803970C
_080396FE:
	movs r2, #0
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803970C
	movs r2, #1
_0803970C:
	strh r2, [r3]
	ldrh r0, [r6]
	cmp r0, #0
	beq _0803972C
	ldrh r0, [r5]
	cmp r0, r7
	beq _0803971E
	adds r0, #1
	b _08039720
_0803971E:
	mov r0, ip
_08039720:
	strh r0, [r5]
_08039722:
	movs r0, #0xd1
	bl play_sound
	movs r0, #1
	b _0803972E
_0803972C:
	movs r0, #0
_0803972E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
