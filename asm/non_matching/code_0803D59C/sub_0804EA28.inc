	.syntax unified
sub_0804EA28:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	ldrh r0, [r6, #0xa]
	bl sub_08054FF0
	adds r0, r4, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0804EA50
	movs r0, #0xd6
	bl play_sound
	b _0804EA8C
_0804EA50:
	ldrh r5, [r6, #4]
	lsls r5, r5, #2
	ldr r4, _0804EA94
	adds r5, r5, r4
	movs r0, #0xd2
	bl play_sound
	adds r0, r6, #0
	movs r1, #6
	bl sub_08053EEC
	ldr r0, _0804EA98
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r5]
	ldr r2, _0804EA9C
	adds r0, r4, r2
	strb r1, [r0]
	ldrh r1, [r6, #4]
	adds r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	strh r7, [r0]
	ldr r2, _0804EAA0
	adds r4, r4, r2
	strh r7, [r4]
_0804EA8C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EA94: .4byte gUnknown_020194A8
_0804EA98: .4byte 0x00000D53
_0804EA9C: .4byte 0x00000D55
_0804EAA0: .4byte 0x0000106C
	.syntax divided
