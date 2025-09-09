	.syntax unified
sub_080A1DB4:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl __7MonsterUsUs
	ldr r0, _080A1EB0
	str r0, [r5, #0x20]
	ldr r0, _080A1EB4
	str r0, [r5, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	mov sl, r2
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A1EB8
	mov sb, r0
	ldr r0, _080A1EBC
	str r0, [sp, #0x20]
	ldr r0, _080A1EC0
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
	ldr r0, _080A1EC4
	str r0, [sp, #0x20]
	ldr r0, _080A1EC8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r2, sb
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _080A1ECC
	str r0, [r5, #0x20]
	ldr r0, _080A1ED0
	str r0, [r5, #0x1c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0
	bl sub_08073E3C
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1EB0: .4byte _vt.14DefaultMonster.10UnitObject
_080A1EB4: .4byte _vt.14DefaultMonster
_080A1EB8: .4byte _vt.3Unk
_080A1EBC: .4byte _vt.13UnitTurnBegin
_080A1EC0: .4byte gUnknown_080F8E5C
_080A1EC4: .4byte _vt.11UnitTurnEnd
_080A1EC8: .4byte gUnknown_080F8E64
_080A1ECC: .4byte vt_09F4FCD8
_080A1ED0: .4byte vt_09F4FD50
	.syntax divided
