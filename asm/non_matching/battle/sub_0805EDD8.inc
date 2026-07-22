	.syntax unified
_GLOBAL_I_BattleManager:
	push {r4, lr}
	ldr r4, _0805EE40
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE44
	str r0, [r4, #8]
	ldr r4, _0805EE48
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE4C
	str r0, [r4, #8]
	ldr r4, _0805EE50
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE54
	str r0, [r4, #8]
	ldr r4, _0805EE58
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE5C
	str r0, [r4, #8]
	ldr r4, _0805EE60
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE64
	str r0, [r4, #8]
	ldr r4, _0805EE68
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE6C
	str r0, [r4, #8]
	ldr r4, _0805EE70
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE74
	str r0, [r4, #8]
	ldr r4, _0805EE78
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE7C
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE40: .4byte sRoundBeginRTTI
_0805EE44: .4byte _vt.14RoundBeginRTTI
_0805EE48: .4byte sRoundEndRTTI
_0805EE4C: .4byte _vt.12RoundEndRTTI
_0805EE50: .4byte sUnitTurnBeginRTTI
_0805EE54: .4byte _vt.17UnitTurnBeginRTTI
_0805EE58: .4byte sUnitTurnEndRTTI
_0805EE5C: .4byte _vt.15UnitTurnEndRTTI
_0805EE60: .4byte sShowDownAsWinRTTI
_0805EE64: .4byte _vt.17ShowDownAsWinRTTI
_0805EE68: .4byte sShowDownAsEscapeRTTI
_0805EE6C: .4byte _vt.20ShowDownAsEscapeRTTI
_0805EE70: .4byte sShowDownAsLoseRTTI
_0805EE74: .4byte _vt.18ShowDownAsLoseRTTI
_0805EE78: .4byte sBattleManager
_0805EE7C: .4byte _vt.13BattleManager
	.syntax divided
