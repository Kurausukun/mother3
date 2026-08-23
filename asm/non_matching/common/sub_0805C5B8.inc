    .syntax unified
sub_0805C5B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	str r0, [sp, #0x7c]
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0
	str r0, [sp]
	cmp r3, #0
	beq _0805C5E2
	movs r0, #1
	str r3, [sp, #4]
	str r0, [sp]
	add r0, sp, #0x18
	mov sl, r0
	lsls r7, r6, #3
	b _0805C62E
_0805C5E2:
	movs r4, #0
	ldr r1, _0805C6B4 @ =gSave
	mov ip, r1
	add r2, sp, #0x18
	mov sl, r2
	lsls r7, r6, #3
	ldr r3, _0805C6B8 @ =gLevelStatTable
	mov sb, r3
	ldr r5, _0805C6BC @ =gCharStats
_0805C5F4:
	mov r1, ip
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C628
	movs r0, #0x6c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r2, r5
	ldr r1, [sp]
	adds r3, r1, #1
	cmp r3, #5
	bgt _0805C628
	lsls r1, r1, #2
	add r0, sp, #4
	adds r0, r0, r1
	str r2, [r0]
	str r3, [sp]
_0805C628:
	adds r4, #1
	cmp r4, #4
	ble _0805C5F4
_0805C62E:
	ldr r0, [sp]
	mov r2, sl
	strb r0, [r2]
	movs r5, #0
	ldr r3, [sp]
	cmp r5, r3
	bge _0805C65E
	mov r4, sl
	adds r4, #4
	add r3, sp, #4
	mov sb, r3
_0805C644:
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r1, r4, #0
	bl sub_080687C0
	adds r4, #0x10
	adds r5, #1
	ldr r0, [sp]
	cmp r5, r0
	blt _0805C644
_0805C65E:
	ldr r2, _0805C6C0 @ =gPsiData
	subs r0, r7, r6
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0xc]
	mov r3, r8
	movs r4, #0x1c
	ldrsh r0, [r3, r4]
	ldr r3, [sp]
	cmp r1, r0
	ble _0805C676
	b _0805C7A2
_0805C676:
	movs r4, #0
	cmp r4, r3
	blt _0805C67E
	b _0805C792
_0805C67E:
	ldr r1, _0805C6C0 @ =gPsiData
	subs r0, r7, r6
	lsls r0, r0, #3
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r4, #2
	cmp r0, #2
	beq _0805C6A0
	cmp r0, #4
	beq _0805C6A0
	adds r0, r3, #4
	add r0, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ble _0805C786
_0805C6A0:
	adds r0, r6, #0
	subs r0, #0x18
	cmp r0, #6
	bhi _0805C770
	lsls r0, r0, #2
	ldr r1, _0805C6C4 @ =_0805C6C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C6B4: .4byte gSave
_0805C6B8: .4byte gLevelStatTable
_0805C6BC: .4byte gCharStats
_0805C6C0: .4byte gPsiData
_0805C6C4: .4byte _0805C6C8
_0805C6C8: @ jump table
	.4byte _0805C6E4 @ case 0
	.4byte _0805C770 @ case 1
	.4byte _0805C770 @ case 2
	.4byte _0805C700 @ case 3
	.4byte _0805C71C @ case 4
	.4byte _0805C738 @ case 5
	.4byte _0805C754 @ case 6
_0805C6E4:
	subs r1, r7, r6
	lsls r1, r1, #3
	ldr r0, _0805C6FC @ =gPsiData+0x10
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	mov r0, r8
	bl sub_0805C7F0
	b _0805C786
	.align 2, 0
_0805C6FC: .4byte gPsiData+0x10
_0805C700:
	subs r1, r7, r6
	lsls r1, r1, #3
	ldr r0, _0805C718 @ =gPsiData+0x10
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	mov r0, r8
	bl sub_0805C7F8
	b _0805C786
	.align 2, 0
_0805C718: .4byte gPsiData+0x10
_0805C71C:
	subs r1, r7, r6
	lsls r1, r1, #3
	ldr r0, _0805C734 @ =gPsiData+0x10
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	mov r0, r8
	bl sub_0805C82C
	b _0805C786
	.align 2, 0
_0805C734: .4byte gPsiData+0x10
_0805C738:
	subs r1, r7, r6
	lsls r1, r1, #3
	ldr r0, _0805C750 @ =gPsiData+0x10
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	mov r0, r8
	bl sub_0805C850
	b _0805C786
	.align 2, 0
_0805C750: .4byte gPsiData+0x10
_0805C754:
	subs r1, r7, r6
	lsls r1, r1, #3
	ldr r0, _0805C76C @ =gPsiData+0x10
	adds r1, r1, r0
	adds r0, r3, #4
	add r0, sp
	ldr r2, [r0]
	mov r0, r8
	bl sub_0805C888
	b _0805C786
	.align 2, 0
_0805C76C: .4byte gPsiData+0x10
_0805C770:
	subs r2, r7, r6
	lsls r2, r2, #3
	ldr r0, _0805C7E8 @ =gPsiData+0x10
	adds r2, r2, r0
	adds r0, r3, #4
	add r0, sp
	ldr r3, [r0]
	add r0, sp, #0x6c
	mov r1, r8
	bl sub_080687DC
_0805C786:
	adds r4, #1
	ldr r3, [sp]
	ldr r2, _0805C7EC @ =gPsiData
	cmp r4, r3
	bge _0805C792
	b _0805C67E
_0805C792:
	subs r0, r7, r6
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r0, #0xc]
	subs r1, r1, r0
	strh r1, [r2, #0x1c]
_0805C7A2:
	movs r5, #0
	cmp r5, r3
	bge _0805C7CC
	subs r0, r7, r6
	lsls r7, r0, #3
	mov r4, sl
	adds r4, #4
	add r6, sp, #4
	ldr r3, _0805C7E8 @ =gPsiData+0x10
	mov r8, r3
_0805C7B6:
	ldm r6!, {r0}
	mov r2, r8
	adds r1, r7, r2
	adds r2, r4, #0
	bl sub_080688B0
	adds r4, #0x10
	adds r5, #1
	ldr r0, [sp]
	cmp r5, r0
	blt _0805C7B6
_0805C7CC:
	ldr r0, [sp, #0x7c]
	mov r1, sl
	movs r2, #0x54
	bl memcpy
	ldr r0, [sp, #0x7c]
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C7E8: .4byte gPsiData+0x10
_0805C7EC: .4byte gPsiData
    .syntax divided
