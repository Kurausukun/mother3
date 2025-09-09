	.syntax unified
sub_0809BFE8:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C0B8
	str r0, [r7, #0x20]
	ldr r0, _0809C0BC
	str r0, [r7, #0x1c]
	bl get__13BattleManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0809C0C0
	ldr r0, _0809C0C4
	str r0, [sp, #0x20]
	ldr r0, _0809C0C8
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
	ldr r0, _0809C0CC
	str r0, [sp, #0x20]
	ldr r0, _0809C0D0
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
	ldr r0, _0809C0D4
	str r0, [r7, #0x20]
	ldr r0, _0809C0D8
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl unit_200__C4Unit
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0809C840
	adds r0, r7, #0
	movs r1, #2
	bl sub_0807BDB4
	adds r0, r7, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r7, #0
	bl sub_0807BF70
	cmp r0, #0
	ble _0809C0A4
	adds r0, r7, #0
	movs r1, #0xb
	bl sub_0807BDB4
_0809C0A4:
	adds r0, r7, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809C0B8: .4byte vt_09F48BF8
_0809C0BC: .4byte vt_09F48C70
_0809C0C0: .4byte _vt.3Unk
_0809C0C4: .4byte _vt.13UnitTurnBegin
_0809C0C8: .4byte gUnknown_080F52C8
_0809C0CC: .4byte _vt.11UnitTurnEnd
_0809C0D0: .4byte gUnknown_080F52D0
_0809C0D4: .4byte vt_09F46E20
_0809C0D8: .4byte vt_09F46E98
	.syntax divided
