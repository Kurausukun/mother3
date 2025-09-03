	.syntax unified
sub_080392C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	ldr r0, _08039304
	ldr r1, _08039308
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803930C
	adds r7, r0, r1
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _08039310
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08039310
	ldrh r0, [r7, #8]
	cmp r0, #0
	bne _08039310
	movs r0, #0xf0
	mov r2, r8
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #2]
	b _080393B6
	.align 2, 0
_08039304: .4byte gGame
_08039308: .4byte 0x000067AC
_0803930C: .4byte gTownMapInfoTable
_08039310:
	bl sub_0801A5EC
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov sl, r6
	bl sub_0801A604
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r7, #6]
	ldrh r5, [r7, #2]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r7, #8]
	ldrh r1, [r7, #4]
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r3, sb
	movs r6, #0
	ldrsh r1, [r3, r6]
	muls r0, r1, r0
	mov r1, sl
	str r2, [sp]
	bl __divsi3
	adds r5, r5, r0
	mov r0, r8
	strh r5, [r0]
	mov r1, sb
	movs r3, #2
	ldrsh r0, [r1, r3]
	muls r0, r4, r0
	ldr r2, [sp]
	adds r1, r2, #0
	bl __divsi3
	ldrh r3, [r7, #4]
	adds r3, r3, r0
	ldr r1, _080393C8
	ldr r4, _080393CC
	adds r0, r1, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r4, #4
	adds r2, r1, r4
	lsls r0, r0, #3
	ldrh r2, [r2]
	adds r0, r0, r2
	subs r5, r5, r0
	mov r6, r8
	strh r5, [r6]
	ldr r2, _080393D0
	adds r0, r1, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r6, _080393D4
	adds r1, r1, r6
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r3, r3, r0
	mov r0, r8
	strh r3, [r0, #2]
	lsls r5, r5, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r5, r0
	bhi _080393AC
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080393AC
	cmp r0, #0xb0
	ble _080393B6
_080393AC:
	movs r0, #0xf0
	mov r1, r8
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #2]
_080393B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080393C8: .4byte gSomeBlend
_080393CC: .4byte 0x0000366C
_080393D0: .4byte 0x0000366E
_080393D4: .4byte 0x00003672
	.syntax divided
