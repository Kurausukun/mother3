	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080234C8
	ldr r2, _080234CC
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08023500
	subs r2, #0x2a
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #5
	bne _080234D8
	ldr r2, _080234D0
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r2, _080234D4
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #4
	mov r3, sp
	bl sub_08027E74
	b _080234E6
	.align 2, 0
_080234C8: .4byte gGame
_080234CC: .4byte 0x00008484
_080234D0: .4byte 0x000067AC
_080234D4: .4byte 0x0000845C
_080234D8:
	ldr r2, _080234F8
	adds r0, r1, r2
	ldrh r0, [r0]
	add r1, sp, #4
	mov r2, sp
	bl sub_08027E0C
_080234E6:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080234FC
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0801B574
	b _08023500
	.align 2, 0
_080234F8: .4byte 0x0000845C
_080234FC:
	bl sub_08023EF8
_08023500:
	ldr r5, _08023538
	ldr r0, _0802353C
	adds r6, r5, r0
	ldrb r1, [r6]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08023568
	bl sub_08022710
	ldr r1, _08023540
	adds r0, r5, r1
	bl sub_08023588
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802354C
	ldr r0, _08023544
	ldr r2, _08023548
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	bl sub_0801B7D8
	b _08023574
	.align 2, 0
_08023538: .4byte gSomeBlend
_0802353C: .4byte 0x00004B18
_08023540: .4byte 0x00002CA0
_08023544: .4byte gGame
_08023548: .4byte 0x0000947A
_0802354C:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08023574
	ldr r0, _08023560
	ldr r1, _08023564
	adds r0, r0, r1
	strh r4, [r0]
	b _08023574
	.align 2, 0
_08023560: .4byte gGame
_08023564: .4byte 0x0000947A
_08023568:
	ldr r0, _08023584
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023574
	bl sub_0801B7D8
_08023574:
	movs r0, #4
	movs r1, #0x72
	bl sub_08023948
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023584: .4byte gGame
	.syntax divided
