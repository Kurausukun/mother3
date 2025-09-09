	.syntax unified
sub_080A410C:
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
	ldr r0, _080A41D4
	str r0, [r7, #0x20]
	ldr r0, _080A41D8
	str r0, [r7, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r6, #0
	strh r6, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r6, [r0]
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41DC
	mov r8, r0
	ldr r0, _080A41E0
	str r0, [sp, #0x20]
	ldr r0, _080A41E4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A41E8
	str r0, [sp, #0x20]
	ldr r0, _080A41EC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A41F0
	str r0, [r7, #0x20]
	ldr r0, _080A41F4
	str r0, [r7, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0x64
	rsbs r1, r1, #0
	str r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	str r1, [r0]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A41D4: .4byte _vt.14DefaultMonster.10UnitObject
_080A41D8: .4byte _vt.14DefaultMonster
_080A41DC: .4byte _vt.3Unk
_080A41E0: .4byte _vt.13UnitTurnBegin
_080A41E4: .4byte gUnknown_080F8E5C
_080A41E8: .4byte _vt.11UnitTurnEnd
_080A41EC: .4byte gUnknown_080F8E64
_080A41F0: .4byte vt_09F5BEB8
_080A41F4: .4byte vt_09F5BF30
	.syntax divided
