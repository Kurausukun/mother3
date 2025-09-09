	.syntax unified
sub_0809BF18:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809BFC4
	str r0, [r5, #0x20]
	ldr r0, _0809BFC8
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFCC
	mov r8, r0
	ldr r0, _0809BFD0
	str r0, [sp, #0x20]
	ldr r0, _0809BFD4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809BFD8
	str r0, [sp, #0x20]
	ldr r0, _0809BFDC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r0, _0809BFE0
	str r0, [r5, #0x20]
	ldr r0, _0809BFE4
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #7
	bl sub_0807BDB4
	adds r0, r5, #0
	movs r1, #5
	bl sub_0807BDB4
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809BFC4: .4byte vt_09F48BF8
_0809BFC8: .4byte vt_09F48C70
_0809BFCC: .4byte _vt.3Unk
_0809BFD0: .4byte _vt.13UnitTurnBegin
_0809BFD4: .4byte gUnknown_080F52C8
_0809BFD8: .4byte _vt.11UnitTurnEnd
_0809BFDC: .4byte gUnknown_080F52D0
_0809BFE0: .4byte vt_09F46930
_0809BFE4: .4byte vt_09F469A8
	.syntax divided
