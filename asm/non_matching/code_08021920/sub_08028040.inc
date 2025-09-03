	.syntax unified
	push {r4, lr}
	ldr r4, _08028070
	adds r0, r4, #0
	bl sub_08029054
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	ldr r0, _08028074
	adds r1, r4, r0
	ldr r0, _08028078
	str r0, [r1]
	ldr r0, _0802807C
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	bl sub_08030180
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028070: .4byte gUnknown_0200D818
_08028074: .4byte 0x000020F0
_08028078: .4byte 0x06010000
_0802807C: .4byte 0x000020F4
	.syntax divided
