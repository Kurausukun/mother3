	.syntax unified
sub_080A9234:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitP6Action
	ldr r1, _080A9264
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9268
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A92B0
	.align 2, 0
_080A9264: .4byte 0x000001FB
_080A9268:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A928E
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A92B0
_080A928E:
	ldr r1, _080A92B8
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A92BC
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #3
_080A92B0:
	movs r2, #0
	bl _call_via_r3
	b _080A9350
	.align 2, 0
_080A92B8: .4byte 0x000001FD
_080A92BC:
	ldr r1, _080A9358
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9350
	ldr r0, _080A935C
	bl playSound
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x78
	bl setsleep
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	movs r1, #0x9d
	lsls r1, r1, #3
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #0
	bl setHP__7Monsteri
_080A9350:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9358: .4byte 0x0000018B
_080A935C: .4byte 0x0000028A
	.syntax divided
