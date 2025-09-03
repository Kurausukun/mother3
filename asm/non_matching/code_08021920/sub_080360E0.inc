	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _080360F0
	adds r0, r4, #0
	bl sub_080361B0
_080360F0:
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _080361A2
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036116
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	ldr r1, [r4, #0x34]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1]
	cmp r0, r2
	bls _08036120
	movs r0, #0
	strh r0, [r1]
	b _08036120
_08036116:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803612A
	subs r0, #1
	strh r0, [r2]
_08036120:
	ldr r0, [r4, #0x34]
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080361A2
_0803612A:
	adds r0, r2, #0
	adds r0, #0x18
	str r0, [r4, #0x34]
	ldrb r1, [r0, #0x14]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0
	bne _080361A2
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	adds r5, r4, #0
	adds r5, #0x85
	cmp r0, #0
	blt _08036156
	ldrb r0, [r5]
	bl sub_08033460
_08036156:
	adds r4, #0xc7
	ldrb r0, [r4]
	lsrs r1, r0, #4
	cmp r1, #7
	bgt _08036166
	ldrb r0, [r5]
	bl sub_08036A1C
_08036166:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5]
	cmp r0, #0
	bne _080361A2
	ldr r1, _080361A8
	ldr r2, _080361AC
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080361A2
	subs r2, #0x3a
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #9
	bne _080361A2
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xc
	bne _080361A2
	ldrb r0, [r5]
	movs r1, #5
	bl sub_08033620
_080361A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080361A8: .4byte gGame
_080361AC: .4byte 0x00008494
	.syntax divided
