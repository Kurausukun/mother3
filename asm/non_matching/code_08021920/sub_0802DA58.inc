	.syntax unified
sub_0802DA58:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802DABC
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802DA88
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802DA88
	lsrs r0, r1, #7
	cmp r0, #0
	beq _0802DA88
	b _0802DB94
_0802DA88:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802DAE6
	adds r2, r4, #0
	adds r2, #0xbd
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802DAB8
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802DB94
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0802DB94
	.align 2, 0
_0802DAB8: .4byte gGame
_0802DABC:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802DADA
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802DADA
	lsrs r0, r1, #7
	cmp r0, #0
	bne _0802DB94
_0802DADA:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r1, [r5]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0802DB40
_0802DAE6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802E6BC
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB94
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0800CBE0
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802DB94
	adds r0, r4, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_08027DC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DB62
	b _0802DB94
_0802DB40:
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _0802DB62
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB94
	ldrb r1, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _0802DB94
_0802DB62:
	adds r0, r4, #0
	adds r0, #0xc4
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0802DB88
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _0802DB8E
	adds r0, r4, #0
	bl sub_0802DB9C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB8E
	adds r0, r4, #0
	bl enemy_move
	b _0802DB8E
_0802DB88:
	adds r0, r4, #0
	bl enemy_move
_0802DB8E:
	adds r0, r4, #0
	bl sub_0802DDA0
_0802DB94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
