	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bls _080558E4
	bl sub_0805592C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0805591A
_080558E0:
	movs r0, #0
	b _0805591A
_080558E4:
	ldr r0, _08055920
	ldr r1, _08055924
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl sub_080486A0
	adds r3, r0, #0
	movs r1, #0
	ldrh r0, [r4]
	ldr r2, _08055928
	cmp r0, r2
	beq _08055918
	ldrh r3, [r3]
_08055900:
	ldrh r0, [r4]
	cmp r0, r3
	bne _080558E0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #2
	cmp r1, #8
	bhi _08055918
	ldrh r0, [r4]
	cmp r0, r2
	bne _08055900
_08055918:
	movs r0, #1
_0805591A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08055920: .4byte gSomeBlend
_08055924: .4byte 0x00004DF4
_08055928: .4byte 0x0000FFFF
	.syntax divided
