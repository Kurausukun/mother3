	.syntax unified
sub_0809C464:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C51C
	str r0, [r7, #0x20]
	ldr r0, _0809C520
	str r0, [r7, #0x1c]
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C524
	ldr r0, _0809C528
	str r0, [sp, #0x20]
	ldr r0, _0809C52C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C530
	str r0, [sp, #0x20]
	ldr r0, _0809C534
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809C538
	str r0, [r7, #0x20]
	ldr r0, _0809C53C
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0809D004
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C508
	adds r0, r7, #0
	movs r1, #8
	bl sub_0807BDB4
_0809C508:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C51C: .4byte vt_09F48BF8
_0809C520: .4byte vt_09F48C70
_0809C524: .4byte _vt.3Unk
_0809C528: .4byte _vt.13UnitTurnBegin
_0809C52C: .4byte gUnknown_080F52C8
_0809C530: .4byte _vt.11UnitTurnEnd
_0809C534: .4byte gUnknown_080F52D0
_0809C538: .4byte vt_09F48700
_0809C53C: .4byte vt_09F48778
	.syntax divided
