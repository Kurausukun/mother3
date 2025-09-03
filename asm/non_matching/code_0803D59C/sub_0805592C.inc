	.syntax unified
sub_0805592C:
	push {r4, lr}
	ldr r0, _08055954
	ldr r1, _08055958
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl sub_080486A0
	adds r3, r0, #0
	movs r1, #0
	ldrh r0, [r4]
	ldr r2, _0805595C
	cmp r0, r2
	beq _08055972
	ldrh r3, [r3]
_0805594A:
	ldrh r0, [r4]
	cmp r0, r3
	beq _08055960
	movs r0, #0
	b _08055974
	.align 2, 0
_08055954: .4byte gSomeBlend
_08055958: .4byte 0x00004DF4
_0805595C: .4byte 0x0000FFFF
_08055960:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #2
	cmp r1, #0xf
	bhi _08055972
	ldrh r0, [r4]
	cmp r0, r2
	bne _0805594A
_08055972:
	movs r0, #1
_08055974:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
