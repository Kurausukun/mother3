	.syntax unified
sub_08033FEC:
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r0, _08034020
	ldr r1, _08034024
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080340DE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08034028
	movs r0, #5
	bl musicPlayerStop_sfx
	movs r0, #0xec
	bl play_sound
	b _0803404E
	.align 2, 0
_08034020: .4byte gGame
_08034024: .4byte 0x0000829B
_08034028:
	movs r0, #5
	bl musicPlayerStop_sfx
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803404E
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_0803404E:
	ldr r3, _080340E8
	ldr r5, _080340EC
	adds r1, r3, r5
	movs r5, #0
	movs r0, #4
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _080340F0
	adds r4, r3, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080340F4
	adds r3, r3, r0
	strh r5, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	movs r4, #0
_0803408A:
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080340D4
	adds r2, r3, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r5, #7
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x96
	movs r2, #0
	movs r0, #0x20
	strh r0, [r1]
	cmp r4, #0
	beq _080340D4
	adds r0, r3, #0
	adds r0, #0x9a
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldrh r1, [r3]
	strh r1, [r3, #8]
	ldrh r0, [r3, #2]
	strh r0, [r3, #0xa]
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
_080340D4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803408A
_080340DE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080340E8: .4byte gGame
_080340EC: .4byte 0x0000829B
_080340F0: .4byte 0x000082B7
_080340F4: .4byte 0x000082A2
	.syntax divided
