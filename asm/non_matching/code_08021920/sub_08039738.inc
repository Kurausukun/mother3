	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, sp
	strh r1, [r0]
	mov r2, sp
	adds r2, #2
	ldrh r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _08039764
	ldrh r0, [r4, #2]
	lsrs r0, r0, #5
	movs r1, #1
	ands r1, r0
	b _0803976E
_08039764:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x20
	bne _0803976E
	movs r1, #1
_0803976E:
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08039786
	ldrh r0, [r5]
	cmp r0, r7
	beq _08039782
	subs r0, #1
	strh r0, [r5]
	b _080397BA
_08039782:
	strh r6, [r5]
	b _080397BA
_08039786:
	adds r2, r3, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803979A
	ldrh r0, [r4, #2]
	lsrs r0, r0, #4
	movs r1, #1
	ands r1, r0
	b _080397A4
_0803979A:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x10
	bne _080397A4
	movs r1, #1
_080397A4:
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0
	beq _080397C4
	ldrh r0, [r5]
	cmp r0, r6
	beq _080397B8
	adds r0, #1
	strh r0, [r5]
	b _080397BA
_080397B8:
	strh r7, [r5]
_080397BA:
	movs r0, #0xd1
	bl play_sound
	movs r0, #1
	b _080397C6
_080397C4:
	movs r0, #0
_080397C6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
