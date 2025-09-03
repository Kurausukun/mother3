	.syntax unified
sub_08054EF4:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08054F1C
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08054F24
	cmp r0, #1
	blo _08054F20
	cmp r0, #2
	beq _08054F28
	cmp r0, #3
	beq _08054F2C
	movs r0, #4
	b _08054F2E
	.align 2, 0
_08054F1C: .4byte gGoodsInfo
_08054F20:
	movs r0, #0
	b _08054F2E
_08054F24:
	movs r0, #1
	b _08054F2E
_08054F28:
	movs r0, #2
	b _08054F2E
_08054F2C:
	movs r0, #3
_08054F2E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
