	.syntax unified
	push {lr}
	ldr r1, _0804BEA4
	ldr r2, _0804BEA8
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	movs r0, #0xb8
	lsls r0, r0, #6
	adds r3, r1, r0
	strh r2, [r3, #4]
	ldr r2, _0804BEAC
	adds r0, r1, r2
	ldrb r2, [r0]
	strh r2, [r3, #0xa]
	ldr r0, _0804BEB0
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r0, #1
	strh r1, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhs _0804BE9C
	ldrh r0, [r3, #0xa]
	bl sub_08054FE0
	bl sub_080524EC
_0804BE9C:
	bl sub_08052964
	pop {r0}
	bx r0
	.align 2, 0
_0804BEA4: .4byte gSomeBlend
_0804BEA8: .4byte 0x00004260
_0804BEAC: .4byte 0x00004264
_0804BEB0: .4byte 0x00002DFA
	.syntax divided
