	.syntax unified
sub_080A2714:
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
	ldr r0, _080A2824
	str r0, [r5, #0x20]
	ldr r0, _080A2828
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
	ldr r2, _080A282C
	mov sb, r2
	ldr r0, _080A2830
	str r0, [sp, #0x20]
	ldr r0, _080A2834
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
	ldr r0, _080A2838
	str r0, [sp, #0x20]
	ldr r0, _080A283C
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
	ldr r0, _080A2840
	str r0, [r5, #0x20]
	ldr r0, _080A2844
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #1
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #3
	bl getElementWeakness__C4UnitUi
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xaa
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
_080A2824: .4byte _vt.14DefaultMonster.10UnitObject
_080A2828: .4byte _vt.14DefaultMonster
_080A282C: .4byte _vt.3Unk
_080A2830: .4byte _vt.13UnitTurnBegin
_080A2834: .4byte gUnknown_080F8E5C
_080A2838: .4byte _vt.11UnitTurnEnd
_080A283C: .4byte gUnknown_080F8E64
_080A2840: .4byte vt_09F52C70
_080A2844: .4byte vt_09F52CE8
	.syntax divided
