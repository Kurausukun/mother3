	.syntax unified
sub_0809C294:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C358
	str r0, [r7, #0x20]
	ldr r0, _0809C35C
	str r0, [r7, #0x1c]
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C360
	ldr r0, _0809C364
	str r0, [sp, #0x20]
	ldr r0, _0809C368
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
	ldr r0, _0809C36C
	str r0, [sp, #0x20]
	ldr r0, _0809C370
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
	ldr r0, _0809C374
	str r0, [r7, #0x20]
	ldr r0, _0809C378
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl level__C4Unit
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0809CCF4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C346
	adds r0, r7, #0
	movs r1, #6
	bl sub_0807BDB4
_0809C346:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C358: .4byte vt_09F48BF8
_0809C35C: .4byte vt_09F48C70
_0809C360: .4byte _vt.3Unk
_0809C364: .4byte _vt.13UnitTurnBegin
_0809C368: .4byte gUnknown_080F52C8
_0809C36C: .4byte _vt.11UnitTurnEnd
_0809C370: .4byte gUnknown_080F52D0
_0809C374: .4byte vt_09F47D08
_0809C378: .4byte vt_09F47D80
	.syntax divided
