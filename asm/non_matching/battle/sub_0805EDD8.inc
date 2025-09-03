	.syntax unified
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
_0805EE40: .4byte gUnknown_02002004
_0805EE44: .4byte vt_09F45618
_0805EE48: .4byte gUnknown_02001FF8
_0805EE4C: .4byte vt_09F45598
_0805EE50: .4byte gUnknown_02001FEC
_0805EE54: .4byte vt_09F45518
_0805EE58: .4byte gUnknown_02001FE0
_0805EE5C: .4byte vt_09F45498
_0805EE60: .4byte gUnknown_02001FD4
_0805EE64: .4byte vt_09F45418
_0805EE68: .4byte gUnknown_02001FC8
_0805EE6C: .4byte vt_09F45398
_0805EE70: .4byte gUnknown_02001FBC
_0805EE74: .4byte vt_09F45318
_0805EE78: .4byte gUnknown_02001FB0
_0805EE7C: .4byte vt_09F45298
	.syntax divided
