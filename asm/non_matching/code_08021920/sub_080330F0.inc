	.syntax unified
sub_080330F0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _08033110
	adds r0, r5, #6
	mov r8, r0
	ldr r2, _08033114
	movs r6, #0
	ldr r0, _08033118
	ldr r3, _0803311C
	adds r1, r0, r3
	ldr r3, _08033120
	b _0803313E
	.align 2, 0
_08033110: .4byte gOAMObjBuffer
_08033114: .4byte gMenuObjBuffer
_08033118: .4byte gSomeBlend
_0803311C: .4byte 0x000121B2
_08033120: .4byte gSceneObjBuffer
_08033124:
	ldrh r0, [r2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r2, #2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r2, #4]
	strh r0, [r5]
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, #8
_0803313E:
	ldrh r0, [r1]
	cmp r6, r0
	blo _08033124
	mov sl, r3
	movs r1, #0
	mov sb, r1
	movs r6, #0
	ldr r2, _080331C8
	ldr r3, _080331CC
	adds r0, r2, r3
	ldrh r1, [r0]
	cmp r6, r1
	bhs _080331FE
	mov r7, sp
_0803315A:
	mov r2, sl
	ldrb r0, [r2, #3]
	lsls r2, r0, #3
	ldr r0, _080331D0
	adds r4, r2, r0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080331DC
	ldr r0, _080331D4
	adds r0, r2, r0
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldrh r3, [r0, #4]
	mov r0, sp
	bl sub_08002C5C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080331EC
	ldrh r0, [r4]
	strh r0, [r5]
	adds r5, #2
	ldrh r1, [r4, #2]
	ldr r2, _080331D8
	adds r0, r2, #0
	ands r1, r0
	mov r3, sb
	lsls r0, r3, #9
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r5, #4
	ldrh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7, #2]
	strh r0, [r1, #8]
	ldrh r0, [r7, #4]
	strh r0, [r1, #0x10]
	ldrh r0, [r7, #6]
	strh r0, [r1, #0x18]
	movs r2, #0x20
	add r8, r2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _080331EC
	.align 2, 0
_080331C8: .4byte gSomeBlend
_080331CC: .4byte 0x000121B0
_080331D0: .4byte gUnknown_030038F0
_080331D4: .4byte gUnknown_02027DC8
_080331D8: .4byte 0x0000C1FF
_080331DC:
	strh r1, [r5]
	adds r5, #2
	ldrh r0, [r4, #2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r5, #4
_080331EC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #4
	add sl, r3
	ldr r0, _0803326C
	ldrh r0, [r0]
	cmp r6, r0
	blo _0803315A
_080331FE:
	ldr r2, _08033270
	ldr r3, _08033274
	adds r1, r2, r3
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x7f
	bhi _0803322A
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0803321C:
	strh r1, [r5]
	adds r5, #8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x7f
	bls _0803321C
_0803322A:
	ldr r1, _08033270
	ldr r2, _08033274
	adds r0, r1, r2
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08033270
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r0, _08033278
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803325C
	movs r0, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_0803325C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803326C: .4byte gSceneObjCount
_08033270: .4byte gSomeBlend
_08033274: .4byte 0x000121B0
_08033278: .4byte 0x000121B6
	.syntax divided
