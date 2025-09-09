	.syntax unified
sub_080A41F8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A42A0
	str r0, [r5, #0x20]
	ldr r0, _080A42A4
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A42A8
	mov r8, r0
	ldr r0, _080A42AC
	str r0, [sp, #0x20]
	ldr r0, _080A42B0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
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
	ldr r0, _080A42B4
	str r0, [sp, #0x20]
	ldr r0, _080A42B8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A42BC
	str r0, [r5, #0x20]
	ldr r0, _080A42C0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A42A0: .4byte _vt.14DefaultMonster.10UnitObject
_080A42A4: .4byte _vt.14DefaultMonster
_080A42A8: .4byte _vt.3Unk
_080A42AC: .4byte _vt.13UnitTurnBegin
_080A42B0: .4byte gUnknown_080F8E5C
_080A42B4: .4byte _vt.11UnitTurnEnd
_080A42B8: .4byte gUnknown_080F8E64
_080A42BC: .4byte vt_09F5C368
_080A42C0: .4byte vt_09F5C3E0
	.syntax divided
