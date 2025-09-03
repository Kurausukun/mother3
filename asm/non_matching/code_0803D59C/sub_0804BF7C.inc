	.syntax unified
sub_0804BF7C:
	push {r4, lr}
	ldr r1, _0804BFB8
	ldr r0, _0804BFBC
	adds r2, r1, r0
	movs r3, #0
	movs r0, #4
	strb r0, [r2]
	movs r4, #0xba
	lsls r4, r4, #6
	adds r2, r1, r4
	strh r3, [r2, #4]
	ldr r4, _0804BFC0
	adds r0, r1, r4
	ldrb r0, [r0]
	strh r0, [r2, #0xa]
	strh r3, [r2, #8]
	ldr r3, _0804BFC4
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldr r4, _0804BFC8
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BFB8: .4byte gSomeBlend
_0804BFBC: .4byte 0x00004260
_0804BFC0: .4byte 0x00004264
_0804BFC4: .4byte 0x00002DFA
_0804BFC8: .4byte 0x000044F3
	.syntax divided
