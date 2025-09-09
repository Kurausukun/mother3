	.syntax unified
sub_080A234C:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A243C
	str r0, [r5, #0x20]
	ldr r0, _080A2440
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r2, _080A2444
	mov sb, r2
	ldr r0, _080A2448
	str r0, [sp, #0x20]
	ldr r0, _080A244C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A2450
	str r0, [sp, #0x20]
	ldr r0, _080A2454
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, sb
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A2458
	str r0, [r5, #0x20]
	ldr r0, _080A245C
	str r0, [r5, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A243C: .4byte _vt.14DefaultMonster.10UnitObject
_080A2440: .4byte _vt.14DefaultMonster
_080A2444: .4byte _vt.3Unk
_080A2448: .4byte _vt.13UnitTurnBegin
_080A244C: .4byte gUnknown_080F8E5C
_080A2450: .4byte _vt.11UnitTurnEnd
_080A2454: .4byte gUnknown_080F8E64
_080A2458: .4byte vt_09F51958
_080A245C: .4byte vt_09F519D0
	.syntax divided
