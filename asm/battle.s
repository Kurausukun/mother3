.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0805EDD8
sub_0805EDD8: @ 0x0805EDD8
	push {r4, lr}
	ldr r4, _0805EE40 @ =gUnknown_02002004
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE44 @ =vt_09F45618
	str r0, [r4, #8]
	ldr r4, _0805EE48 @ =gUnknown_02001FF8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE4C @ =vt_09F45598
	str r0, [r4, #8]
	ldr r4, _0805EE50 @ =gUnknown_02001FEC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE54 @ =vt_09F45518
	str r0, [r4, #8]
	ldr r4, _0805EE58 @ =gUnknown_02001FE0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE5C @ =vt_09F45498
	str r0, [r4, #8]
	ldr r4, _0805EE60 @ =gUnknown_02001FD4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE64 @ =vt_09F45418
	str r0, [r4, #8]
	ldr r4, _0805EE68 @ =gUnknown_02001FC8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE6C @ =vt_09F45398
	str r0, [r4, #8]
	ldr r4, _0805EE70 @ =gUnknown_02001FBC
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE74 @ =vt_09F45318
	str r0, [r4, #8]
	ldr r4, _0805EE78 @ =gUnknown_02001FB0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0805EE7C @ =vt_09F45298
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
