	.syntax unified
sub_080A1FC0:
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
	ldr r0, _080A2094
	str r0, [r5, #0x20]
	ldr r0, _080A2098
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A209C
	mov sb, r0
	ldr r0, _080A20A0
	str r0, [sp, #0x20]
	ldr r0, _080A20A4
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A20A8
	str r0, [sp, #0x20]
	ldr r0, _080A20AC
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
	ldr r0, _080A20B0
	str r0, [r5, #0x20]
	ldr r0, _080A20B4
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, r8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	movs r1, #0x16
	bl unit_268__4UnitUi
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2094: .4byte _vt.14DefaultMonster.10UnitObject
_080A2098: .4byte _vt.14DefaultMonster
_080A209C: .4byte _vt.3Unk
_080A20A0: .4byte _vt.13UnitTurnBegin
_080A20A4: .4byte gUnknown_080F8E5C
_080A20A8: .4byte _vt.11UnitTurnEnd
_080A20AC: .4byte gUnknown_080F8E64
_080A20B0: .4byte vt_09F50690
_080A20B4: .4byte vt_09F50708
	.syntax divided
