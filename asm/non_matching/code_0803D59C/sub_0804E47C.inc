	.syntax unified
sub_0804E47C:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804E538
	ldr r4, _0804E4F8
	ldr r0, _0804E4FC
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5]
	ldr r1, _0804E500
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804E530
	ldr r2, _0804E504
	adds r6, r4, r2
	movs r0, #0x15
	strh r0, [r6]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
	movs r0, #1
	bl sub_0803DF94
	ldr r1, _0804E508
	adds r0, r4, r1
	ldrb r0, [r0]
	bl sub_080515DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804E51C
	movs r0, #0xe4
	bl play_sound
	ldrb r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5]
	ldr r0, _0804E50C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804E510
	ldr r1, _0804E514
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _0804E518
	adds r0, r4, r2
	strb r1, [r0]
	bl sub_0800272C
	b _0804E54C
	.align 2, 0
_0804E4F8: .4byte gSomeBlend
_0804E4FC: .4byte 0x000041DA
_0804E500: .4byte 0x000041CA
_0804E504: .4byte 0x000041CC
_0804E508: .4byte 0x000041D3
_0804E50C: .4byte 0x0000C5B4
_0804E510: .4byte gSave
_0804E514: .4byte 0x0000081E
_0804E518: .4byte 0x0000C5C0
_0804E51C:
	movs r0, #0xe5
	bl play_sound
	movs r0, #0x1a
	strh r0, [r6]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
	b _0804E54C
_0804E530:
	movs r0, #0xdd
	bl play_sound
	b _0804E54C
_0804E538:
	ldr r0, _0804E554
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #2
	movs r3, #1
	bl sub_08053804
_0804E54C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E554: .4byte gUnknown_0201A1F2
	.syntax divided
