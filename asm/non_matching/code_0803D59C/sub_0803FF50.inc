	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x60
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803FFEA
	ldr r0, _0803FF70
	movs r1, #0x23
	bl sub_0800289C
	adds r6, r0, #0
	movs r4, #0
	b _0803FFE4
	.align 2, 0
_0803FF70: .4byte gMenuData
_0803FF74:
	adds r0, r5, #0
	adds r0, #0xe
	adds r0, r0, r4
	ldrb r2, [r0]
	ldr r0, _0803FF8C
	adds r0, r2, r0
	ldrb r1, [r0]
	cmp r2, #2
	beq _0803FF90
	cmp r2, #4
	beq _0803FFB6
	b _0803FFCA
	.align 2, 0
_0803FF8C: .4byte gUnknown_080C69B8
_0803FF90:
	adds r0, r5, #0
	adds r0, #0x13
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0x47
	beq _0803FFB2
	cmp r0, #0x47
	bgt _0803FFAA
	cmp r0, #4
	beq _0803FFB2
	cmp r0, #0x3c
	beq _0803FFB2
	b _0803FFCA
_0803FFAA:
	cmp r0, #0x8d
	beq _0803FFB2
	cmp r0, #0xf1
	bne _0803FFCA
_0803FFB2:
	movs r1, #2
	b _0803FFCA
_0803FFB6:
	adds r0, r5, #0
	adds r0, #0x13
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803FFCA
	movs r1, #1
_0803FFCA:
	lsls r1, r1, #5
	adds r1, r6, r1
	adds r2, r4, #0
	adds r2, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803FFF0
	movs r3, #0x20
	bl sub_0800160C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0803FFE4:
	ldrh r0, [r5, #0xc]
	cmp r4, r0
	blo _0803FF74
_0803FFEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FFF0: .4byte gUnknown_02016078
	.syntax divided
