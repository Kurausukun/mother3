	.syntax unified
sub_0800C10C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r6, r1, #0
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036BEC
	adds r5, r7, #0
	adds r5, #0x85
	ldrb r0, [r5]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r2]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r7, #0x18]
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x18]
	ldr r2, [r0]
	lsls r0, r2, #0x18
	mov r8, r4
	cmp r0, #0
	bge _0800C1CC
	ldr r0, _0800C1C4
	ldr r1, _0800C1C8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C18A
	movs r0, #5
	bl musicPlayerStop_sfx
_0800C18A:
	adds r0, r7, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	bge _0800C198
	b _0800C2D8
_0800C198:
	ldrb r4, [r5]
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	movs r0, #1
	bl sub_08033AEC
	b _0800C2D8
	.align 2, 0
_0800C1C4: .4byte gGame
_0800C1C8: .4byte 0x0000829B
_0800C1CC:
	ldr r0, _0800C208
	ldr r3, _0800C20C
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800C2D8
	lsls r0, r2, #0x17
	cmp r0, #0
	bge _0800C23C
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r6]
	cmp r0, #0
	bge _0800C210
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0800C210
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
	.align 2, 0
_0800C208: .4byte gGame
_0800C20C: .4byte 0x000082AA
_0800C210:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _0800C294
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #0
	blt _0800C294
	cmp r0, #0
	blt _0800C22C
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r1, #0
	ble _0800C2A6
_0800C22C:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
_0800C23C:
	lsls r0, r2, #0x16
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r0, #0
	bge _0800C2A6
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r6]
	cmp r0, #0
	ble _0800C268
	movs r3, #2
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0800C268
	ldrb r0, [r2]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0800C2A6
_0800C268:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800C278
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bge _0800C288
_0800C278:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0800C2A2
_0800C288:
	cmp r0, #0
	bgt _0800C294
	adds r2, r7, #0
	adds r2, #0xbc
	cmp r1, #0
	ble _0800C2A6
_0800C294:
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
_0800C2A2:
	orrs r0, r1
	strb r0, [r2]
_0800C2A6:
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldr r4, _0800C354
	ldr r3, _0800C358
	adds r5, r4, r3
	ldrh r1, [r5]
	ldrb r2, [r2]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_080332AC
	ldr r0, [r4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800C2D8
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0800C2D8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08033AEC
_0800C2D8:
	ldr r0, _0800C354
	ldr r3, _0800C358
	adds r2, r0, r3
	ldr r1, _0800C35C
	strh r1, [r2]
	ldr r1, _0800C360
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C2F0
	b _0800C67C
_0800C2F0:
	ldr r0, [r7, #0x18]
	mov r1, r8
	adds r2, r6, #0
	bl sub_0800F314
	add r3, sp, #4
	ldrh r1, [r3]
	ldr r2, _0800C364
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r1, r8
	ldrh r0, [r1, #2]
	add r5, sp, #8
	strh r0, [r5, #2]
	ldrh r1, [r6]
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r2, [r6, #2]
	add r4, sp, #0xc
	strh r2, [r4, #2]
	ldrh r0, [r3]
	adds r1, r1, r0
	strh r1, [r3]
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	movs r2, #0
	ldrsh r0, [r3, r2]
	mov sb, r5
	mov sl, r4
	cmp r0, #0
	blt _0800C370
	movs r3, #0
	ldrsh r4, [r1, r3]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C368
	mov r1, r8
	ldrh r0, [r1]
	b _0800C372
	.align 2, 0
_0800C354: .4byte gGame
_0800C358: .4byte 0x000082AA
_0800C35C: .4byte 0x0000FFFF
_0800C360: .4byte 0x00008494
_0800C364: .4byte 0xFFFF0000
_0800C368:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C372
_0800C370:
	movs r0, #0
_0800C372:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C39E
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C396
	ldrh r0, [r5, #2]
	b _0800C3A0
_0800C396:
	bl sub_0801A604
	subs r0, #1
	b _0800C3A0
_0800C39E:
	movs r0, #0
_0800C3A0:
	mov r1, r8
	strh r0, [r1, #2]
	ldrh r1, [r6]
	lsls r1, r1, #4
	ldrh r2, [r7]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp, #0x10]
	ldr r1, _0800C3D4
	ldr r2, _0800C3D8
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #6
	bne _0800C3DC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	b _0800C3F2
	.align 2, 0
_0800C3D4: .4byte gGame
_0800C3D8: .4byte 0x0000829B
_0800C3DC:
	mov r2, sp
	ldrb r1, [r4, #8]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	ldr r3, _0800C458
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	strh r1, [r2]
_0800C3F2:
	adds r1, r4, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C3FC
	b _0800C520
_0800C3FC:
	ldr r2, _0800C45C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C40C
	cmp r0, #6
	beq _0800C40C
	b _0800C520
_0800C40C:
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C422
	b _0800C52A
_0800C422:
	ldr r3, _0800C460
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C430
	b _0800C680
_0800C430:
	mov r1, sb
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	add r0, sp, #8
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	mov r3, sl
	ldrh r4, [r3]
	strh r4, [r6]
	add r0, sp, #0xc
	ldrh r0, [r0, #2]
	strh r0, [r6, #2]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bne _0800C464
	movs r0, #1
	b _0800C472
	.align 2, 0
_0800C458: .4byte 0x000082B7
_0800C45C: .4byte 0x0000829B
_0800C460: .4byte 0x00008494
_0800C464:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C474
	ldr r1, _0800C484
	adds r0, r1, #0
	orrs r0, r4
_0800C472:
	strh r0, [r6]
_0800C474:
	ldrh r2, [r6, #2]
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C488
	movs r0, #1
	b _0800C496
	.align 2, 0
_0800C484: .4byte 0x0000FFFF
_0800C488:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C498
	ldr r1, _0800C4CC
	adds r0, r1, #0
	orrs r0, r2
_0800C496:
	strh r0, [r6, #2]
_0800C498:
	ldrh r3, [r6]
	mov r2, r8
	ldrh r2, [r2]
	adds r3, r3, r2
	add r2, sp, #4
	strh r3, [r2]
	ldrh r0, [r2, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	lsls r3, r3, #0x10
	cmp r3, #0
	blt _0800C4D8
	mov r3, r8
	movs r0, #0
	ldrsh r4, [r3, r0]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C4D0
	mov r1, r8
	ldrh r0, [r1]
	b _0800C4DA
	.align 2, 0
_0800C4CC: .4byte 0x0000FFFF
_0800C4D0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800C4DA
_0800C4D8:
	movs r0, #0
_0800C4DA:
	mov r2, r8
	strh r0, [r2]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800C506
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800C4FE
	ldrh r0, [r5, #2]
	b _0800C508
_0800C4FE:
	bl sub_0801A604
	subs r0, #1
	b _0800C508
_0800C506:
	movs r0, #0
_0800C508:
	mov r1, r8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
_0800C512:
	adds r2, r6, #0
	bl sub_0800CDD0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C52A
	b _0800C680
_0800C520:
	mov r0, sp
	ldrh r3, [r0]
	adds r0, r7, #0
	mov r1, r8
	b _0800C512
_0800C52A:
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldrh r1, [r6, #2]
	lsls r1, r1, #4
	ldrh r3, [r7, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r2, _0800C598
	mov r8, r2
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r5, _0800C59C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C600
	ldr r3, _0800C5A0
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800C55E
	cmp r0, #6
	bne _0800C600
_0800C55E:
	ldr r1, _0800C5A4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800C600
	add r4, sp, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C57C
	b _0800C670
_0800C57C:
	ldr r2, _0800C5A8
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800C58A
	b _0800C680
_0800C58A:
	ldrh r2, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C5AC
	movs r0, #1
	b _0800C5B8
	.align 2, 0
_0800C598: .4byte 0x0000FFFF
_0800C59C: .4byte gGame
_0800C5A0: .4byte 0x0000829B
_0800C5A4: .4byte 0x000082B7
_0800C5A8: .4byte 0x00008494
_0800C5AC:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C5BA
	mov r0, r8
	orrs r0, r2
_0800C5B8:
	strh r0, [r6]
_0800C5BA:
	ldrh r2, [r6, #2]
	movs r3, #2
	ldrsh r1, [r6, r3]
	cmp r1, #2
	bne _0800C5C8
	movs r0, #1
	b _0800C5D6
_0800C5C8:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C5D8
	ldr r1, _0800C5FC
	adds r0, r1, #0
	orrs r0, r2
_0800C5D6:
	strh r0, [r6, #2]
_0800C5D8:
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	add r1, sp, #0x10
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C670
	b _0800C680
	.align 2, 0
_0800C5FC: .4byte 0x0000FFFF
_0800C600:
	mov r5, sp
	adds r5, #2
	movs r0, #0
	strh r0, [r5]
	add r4, sp, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C648
	ldr r0, _0800C640
	ldr r1, _0800C644
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	strh r0, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800EA38
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C648
_0800C632:
	adds r0, r7, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0800C680
	.align 2, 0
_0800C640: .4byte gGame
_0800C644: .4byte 0x000082B7
_0800C648:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0800C670
	ldrh r0, [r6]
	lsls r0, r0, #4
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r6, #2]
	lsls r0, r0, #4
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	add r1, sp, #0x10
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0800E6FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C632
_0800C670:
	adds r0, r6, #0
	bl sub_0802B370
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C680
_0800C67C:
	movs r0, #1
	b _0800C682
_0800C680:
	movs r0, #0
_0800C682:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
