	.syntax unified
sub_0804BF34:
	push {lr}
	ldr r1, _0804BF68
	ldr r0, _0804BF6C
	adds r2, r1, r0
	movs r3, #0
	movs r0, #3
	strb r0, [r2]
	ldr r0, _0804BF70
	adds r2, r1, r0
	strh r3, [r2, #4]
	ldr r3, _0804BF74
	adds r0, r1, r3
	ldrb r0, [r0]
	strh r0, [r2, #0xa]
	ldr r0, _0804BF78
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #2]
	ldrh r0, [r2, #0xa]
	bl sub_08054FE0
	bl sub_08052DBC
	pop {r0}
	bx r0
	.align 2, 0
_0804BF68: .4byte gSomeBlend
_0804BF6C: .4byte 0x00004260
_0804BF70: .4byte 0x00002E60
_0804BF74: .4byte 0x00004264
_0804BF78: .4byte 0x00002DFA
	.syntax divided
