	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	add r0, sp, #8
	bl sub_0801A530
	ldr r0, _0803179C
	mov r8, r0
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	ldrh r5, [r4]
	orrs r5, r0
	ldr r0, _080317A0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080317B8
	adds r0, r6, #0
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #8
	ldrh r1, [r1]
	subs r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	add r1, sp, #8
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, #0xf0
	cmp r1, r0
	blt _080317A4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _080317A4
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r7, r8
	ands r5, r7
	b _080317C6
	.align 2, 0
_0803179C: .4byte 0xFFFF0000
_080317A0: .4byte gGame
_080317A4:
	add r0, sp, #8
	ldrh r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080317B4
	b _080317C4
	.align 2, 0
_080317B4: .4byte 0xFFFF0000
_080317B8:
	add r0, sp, #8
	ldrh r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
_080317C4:
	ands r5, r1
_080317C6:
	orrs r5, r0
	ldr r1, _0803180C
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	adds r4, r1, #0
	cmp r0, #0
	bge _08031830
	adds r0, r6, #0
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #8
	ldrh r1, [r2, #2]
	subs r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r0, #0xa0
	asrs r2, r5, #0x10
	cmp r1, r0
	blt _08031814
	cmp r2, #0x9f
	bgt _08031814
	adds r0, r3, r2
	lsls r0, r0, #0x10
	ldr r1, _08031810
	ands r5, r1
	orrs r5, r0
	b _08031840
	.align 2, 0
_0803180C: .4byte gGame
_08031810: .4byte 0x0000FFFF
_08031814:
	add r0, sp, #8
	ldrh r0, [r0, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	ldr r1, _08031828
	ands r5, r1
	orrs r5, r0
	ldr r4, _0803182C
	b _08031840
	.align 2, 0
_08031828: .4byte 0x0000FFFF
_0803182C: .4byte gGame
_08031830:
	asrs r1, r5, #0x10
	add r0, sp, #8
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08031894
	ands r5, r0
	orrs r5, r1
_08031840:
	ldr r1, _08031898
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803189C
	ands r5, r1
	orrs r5, r0
	ldr r2, _080318A0
	adds r1, r4, r2
	asrs r0, r5, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08031894
	ands r5, r1
	orrs r5, r0
	movs r3, #3
	subs r3, r3, r6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r7, sb
	ldr r0, [r7, #0x20]
	ldrh r1, [r7, #0x34]
	mov r2, sb
	adds r2, #0x2e
	ldrb r2, [r2]
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	asrs r4, r5, #0x10
	str r4, [sp, #4]
	bl sub_08032958
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031894: .4byte 0x0000FFFF
_08031898: .4byte 0x000067A8
_0803189C: .4byte 0xFFFF0000
_080318A0: .4byte 0x000067AA
	.syntax divided
