	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08039A10
	lsls r0, r0, #2
	ldr r1, _08039948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039948: .4byte _0803994C
_0803994C:
	.4byte _08039964
	.4byte _08039968
	.4byte _0803996C
	.4byte _08039970
	.4byte _08039976
	.4byte _08039980
_08039964:
	movs r5, #1
	b _08039982
_08039968:
	movs r5, #0xa
	b _08039982
_0803996C:
	movs r5, #0x64
	b _08039982
_08039970:
	movs r5, #0xfa
	lsls r5, r5, #2
	b _08039982
_08039976:
	ldr r5, _0803997C
	b _08039982
	.align 2, 0
_0803997C: .4byte 0x00002710
_08039980:
	ldr r5, _080399BC
_08039982:
	ldrh r1, [r2, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080399CC
	ldr r6, _080399C0
	ldr r0, _080399C4
	adds r4, r6, r0
	adds r0, #4
	adds r7, r6, r0
	ldr r1, [r4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08039A10
	movs r0, #0xd0
	bl play_sound
	ldr r0, [r4]
	adds r0, r0, r5
	str r0, [r4]
	ldr r1, [r7]
	cmp r0, r1
	bls _080399B2
	str r1, [r4]
_080399B2:
	ldr r0, _080399C8
	adds r1, r6, r0
	movs r0, #2
	b _080399F2
	.align 2, 0
_080399BC: .4byte 0x000186A0
_080399C0: .4byte gSomeBlend
_080399C4: .4byte 0x0000351C
_080399C8: .4byte 0x00003524
_080399CC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039A10
	ldr r6, _08039A00
	ldr r0, _08039A04
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, r5
	blo _08039A10
	movs r0, #0xd0
	bl play_sound
	ldr r0, [r4]
	subs r0, r0, r5
	str r0, [r4]
	ldr r0, _08039A08
	adds r1, r6, r0
	movs r0, #3
_080399F2:
	strh r0, [r1]
	ldr r0, _08039A0C
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #1
	b _08039A12
	.align 2, 0
_08039A00: .4byte gSomeBlend
_08039A04: .4byte 0x0000351C
_08039A08: .4byte 0x00003524
_08039A0C: .4byte 0x00003526
_08039A10:
	movs r0, #0
_08039A12:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
