	.syntax unified
sub_080A1ED4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1F9C
	str r0, [r7, #0x20]
	ldr r0, _080A1FA0
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r5, #0
	strh r5, [r0]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FA4
	mov r8, r0
	ldr r0, _080A1FA8
	str r0, [sp, #0x20]
	ldr r0, _080A1FAC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1FB0
	str r0, [sp, #0x20]
	ldr r0, _080A1FB4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r3, r8
	str r3, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1FB8
	str r0, [r7, #0x20]
	ldr r0, _080A1FBC
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r2, #0
	movs r1, #6
	subs r3, #4
	adds r0, r7, r3
_080A1F84:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A1F84
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A1F9C: .4byte _vt.14DefaultMonster.10UnitObject
_080A1FA0: .4byte _vt.14DefaultMonster
_080A1FA4: .4byte _vt.3Unk
_080A1FA8: .4byte _vt.13UnitTurnBegin
_080A1FAC: .4byte gUnknown_080F8E5C
_080A1FB0: .4byte _vt.11UnitTurnEnd
_080A1FB4: .4byte gUnknown_080F8E64
_080A1FB8: .4byte vt_09F501A0
_080A1FBC: .4byte vt_09F50218
	.syntax divided
