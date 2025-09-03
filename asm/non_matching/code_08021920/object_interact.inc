	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	add r0, sp, #4
	strh r3, [r0]
	ldr r6, _08025478
	ldr r0, _0802547C
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025370
	b _0802560E
_08025370:
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	movs r2, #5
	mov ip, r2
	ands r2, r0
	mov ip, r2
	cmp r2, #0
	beq _08025384
	b _0802560E
_08025384:
	cmp r1, #0
	bne _0802538A
	b _0802560E
_0802538A:
	cmp r1, #0xa
	bls _08025390
	b _0802560E
_08025390:
	adds r0, r7, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080253A2
	add r0, sp, #4
	strh r2, [r0]
_080253A2:
	adds r5, r7, #0
	adds r5, #0x85
	ldrb r1, [r5]
	ldr r2, _08025480
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _08025484
	adds r1, r6, r0
	ldr r0, _08025488
	strh r0, [r1]
	adds r2, #4
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _0802548C
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, _08025490
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
	ldrb r1, [r6, #2]
	lsls r1, r1, #0x1a
	movs r2, #1
	lsrs r1, r1, #0x1f
	lsls r1, r1, #3
	mov r0, r8
	ldrb r3, [r0]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r1
	add r1, sp, #4
	ldrh r1, [r1]
	ands r2, r1
	lsls r2, r2, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	ldr r2, _08025494
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025498
	adds r0, r6, r1
	mov r2, ip
	str r2, [r0]
	ldr r0, _0802549C
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	ldr r1, _080254A0
	adds r2, r6, r1
	ldrb r1, [r2]
	subs r0, #6
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08025458
	ldrb r0, [r5]
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #5
	mov r1, r8
	ldrh r2, [r1]
	ldr r1, _080254A4
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	strh r1, [r2]
	ldrb r0, [r5]
	movs r1, #0
	movs r2, #0
	bl sub_08033868
_08025458:
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	subs r0, #4
	cmp r0, #6
	bls _0802546E
	b _08025588
_0802546E:
	lsls r0, r0, #2
	ldr r1, _080254A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025478: .4byte gGame
_0802547C: .4byte 0x00008494
_08025480: .4byte 0x00008450
_08025484: .4byte 0x00008452
_08025488: .4byte 0x0000FFFF
_0802548C: .4byte 0x000067AC
_08025490: .4byte 0x0000845C
_08025494: .4byte 0x0000845E
_08025498: .4byte 0x00008484
_0802549C: .4byte 0x00008490
_080254A0: .4byte 0x00008496
_080254A4: .4byte 0xFFFFFE1F
_080254A8: .4byte _080254AC
_080254AC:
	.4byte _080254C8
	.4byte _080254EA
	.4byte _08025504
	.4byte _08025554
	.4byte _08025570
	.4byte _08025588
	.4byte _08025582
_080254C8:
	ldr r4, _080254F8
	ldr r0, _080254FC
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _080254DA
	movs r0, #1
	bl sub_0800ADBC
_080254DA:
	ldr r1, _08025500
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r5]
_080254EA:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
	b _08025588
	.align 2, 0
_080254F8: .4byte gGame
_080254FC: .4byte 0x00009485
_08025500: .4byte 0x00008496
_08025504:
	adds r1, r7, #0
	adds r1, #0x88
	ldr r2, _08025534
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bls _0802551A
	b _0802560E
_0802551A:
	ldrb r1, [r5]
	mov r0, sb
	bl sub_08026508
	bl sub_08026938
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08025538
	movs r0, #1
	bl sub_080052E4
	b _08025588
	.align 2, 0
_08025534: .4byte 0xFFFFFF00
_08025538:
	ldr r0, _0802554C
	ldr r1, _08025550
	adds r0, r0, r1
	movs r1, #0x1e
	strb r1, [r0]
	movs r0, #7
	bl sub_080052E4
	b _08025588
	.align 2, 0
_0802554C: .4byte gGame
_08025550: .4byte 0x0000595C
_08025554:
	ldr r0, _08025568
	ldr r2, _0802556C
	adds r0, r0, r2
	movs r1, #8
	strh r1, [r0]
	movs r0, #9
	bl sub_080260C8
	b _08025588
	.align 2, 0
_08025568: .4byte gGame
_0802556C: .4byte 0x0000845C
_08025570:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	adds r0, r7, #0
	adds r1, r3, #0
	movs r2, #0
	bl sub_080261D0
	b _08025588
_08025582:
	movs r0, #9
	bl sub_080260C8
_08025588:
	ldr r1, _080255B8
	ldr r2, _080255BC
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080255CC
	ldr r2, _080255C0
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x55
	beq _080255A4
	cmp r0, #0x5d
	bne _080255C4
_080255A4:
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	b _0802560E
	.align 2, 0
_080255B8: .4byte gGame
_080255BC: .4byte 0x00008494
_080255C0: .4byte 0x000067AC
_080255C4:
	movs r0, #1
	bl sub_08025F98
	b _0802560E
_080255CC:
	ldr r2, _080255E8
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	beq _080255FE
	cmp r1, r0
	bgt _080255EC
	cmp r1, #0xe
	beq _080255FE
	cmp r1, #0x67
	beq _080255FE
	b _08025608
	.align 2, 0
_080255E8: .4byte 0x000067AC
_080255EC:
	ldr r0, _08025604
	cmp r1, r0
	blt _08025608
	adds r0, #1
	cmp r1, r0
	ble _080255FE
	adds r0, #2
	cmp r1, r0
	bne _08025608
_080255FE:
	bl sub_0800AD6C
	b _0802560E
	.align 2, 0
_08025604: .4byte 0x00000363
_08025608:
	movs r0, #0
	bl sub_0800ADBC
_0802560E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
