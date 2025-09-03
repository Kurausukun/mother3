	.syntax unified
	push {lr}
	ldr r1, _0804BEE8
	ldr r0, _0804BEEC
	adds r2, r1, r0
	movs r3, #0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0804BEF0
	adds r2, r1, r0
	strh r3, [r2, #4]
	ldr r3, _0804BEF4
	adds r0, r1, r3
	ldrb r0, [r0]
	strh r0, [r2, #0xa]
	ldr r0, _0804BEF8
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #2]
	ldrh r0, [r2, #0xa]
	bl sub_08054FE0
	bl sub_080524EC
	pop {r0}
	bx r0
	.align 2, 0
_0804BEE8: .4byte gSomeBlend
_0804BEEC: .4byte 0x00004260
_0804BEF0: .4byte 0x00002E20
_0804BEF4: .4byte 0x00004264
_0804BEF8: .4byte 0x00002DFA
	.syntax divided
