	.syntax unified
sub_08039544:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov ip, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r3, r4, #0
	mov r0, sp
	strh r5, [r0]
	ldrh r1, [r1, #2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080395B6
	ldrh r0, [r6]
	cmp r0, r8
	beq _08039596
	cmp r4, #0x40
	bne _0803958A
	movs r0, #0xd0
	bl play_sound
	b _08039590
_0803958A:
	movs r0, #0xd1
	bl play_sound
_08039590:
	ldrh r0, [r6]
	subs r0, #1
	b _080395F8
_08039596:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080395FE
	cmp r3, #0x40
	bne _080395AA
	movs r0, #0xd0
	bl play_sound
	b _080395B0
_080395AA:
	movs r0, #0xd1
	bl play_sound
_080395B0:
	strh r7, [r6]
	movs r0, #1
	b _08039600
_080395B6:
	ands r1, r2
	cmp r1, #0
	beq _080395FE
	ldrh r0, [r6]
	cmp r0, r7
	beq _080395DA
	cmp r2, #0x80
	bne _080395CE
	movs r0, #0xd0
	bl play_sound
	b _080395D4
_080395CE:
	movs r0, #0xd1
	bl play_sound
_080395D4:
	ldrh r0, [r6]
	adds r0, #1
	b _080395F8
_080395DA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080395FE
	mov r0, ip
	cmp r0, #0x80
	bne _080395F0
	movs r0, #0xd0
	bl play_sound
	b _080395F6
_080395F0:
	movs r0, #0xd1
	bl play_sound
_080395F6:
	mov r0, r8
_080395F8:
	strh r0, [r6]
	movs r0, #1
	b _08039600
_080395FE:
	movs r0, #0
_08039600:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
