	.syntax unified
sub_080054A0:
	push {lr}
	sub sp, #4
	ldr r2, _08005580
	ldrh r0, [r2]
	cmp r0, #0x9d
	bhi _08005572
	mov r1, sp
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _08005584
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054CA
	adds r2, #0x3a
	ldr r1, _08005588
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054CA:
	ldr r0, _0800558C
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054E2
	ldr r2, _08005590
	ldr r1, _08005594
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054E2:
	ldr r0, _08005598
	ldrh r0, [r0]
	cmp r0, #0
	beq _080054FA
	ldr r2, _0800559C
	ldr r1, _080055A0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080054FA:
	ldr r0, _080055A4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005512
	ldr r2, _080055A8
	ldr r1, _080055AC
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005512:
	ldr r0, _080055B0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800552A
	ldr r2, _080055B4
	ldr r1, _080055B8
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800552A:
	ldr r0, _080055BC
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005542
	ldr r2, _080055C0
	ldr r1, _080055C4
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005542:
	ldr r0, _080055C8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800555A
	ldr r2, _080055CC
	ldr r1, _080055D0
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800555A:
	ldr r0, _080055D4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005572
	ldr r2, _080055D8
	ldr r1, _080055DC
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08005572:
	ldr r1, _080055E0
	movs r0, #2
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08005580: .4byte 0x04000006
_08005584: .4byte gUnknown_03004AF0
_08005588: .4byte gUnknown_030040F0
_0800558C: .4byte gUnknown_03004AF2
_08005590: .4byte 0x04000042
_08005594: .4byte gUnknown_03004230
_08005598: .4byte gUnknown_03004AF4
_0800559C: .4byte 0x04000014
_080055A0: .4byte gUnknown_03004370
_080055A4: .4byte gUnknown_03004AF6
_080055A8: .4byte 0x04000018
_080055AC: .4byte gUnknown_030044B0
_080055B0: .4byte gUnknown_03004AF8
_080055B4: .4byte 0x0400001C
_080055B8: .4byte gUnknown_030045F0
_080055BC: .4byte gUnknown_03004AFA
_080055C0: .4byte 0x04000016
_080055C4: .4byte gUnknown_03004730
_080055C8: .4byte gUnknown_03004AFC
_080055CC: .4byte 0x0400001A
_080055D0: .4byte gUnknown_03004870
_080055D4: .4byte gUnknown_03004AFE
_080055D8: .4byte 0x0400001E
_080055DC: .4byte gUnknown_030049B0
_080055E0: .4byte 0x04000202
	.syntax divided
