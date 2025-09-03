	.syntax unified
sub_08045390:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080453B4
	ldr r2, _080453B8
	adds r1, r1, r2
	strh r0, [r1]
	ldr r2, _080453BC
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080453C0
	movs r0, #0xbc
	bl sub_080486A0
	b _080453C6
	.align 2, 0
_080453B4: .4byte gSomeBlend
_080453B8: .4byte 0x000044EE
_080453BC: .4byte gGoodsInfo
_080453C0:
	movs r0, #0xbd
	bl sub_080486A0
_080453C6:
	movs r1, #0x14
	movs r2, #0x87
	bl sub_08047F28
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
