	.syntax unified
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	ldr r1, _080220FC
	cmp r0, r1
	beq _08022100
	adds r0, r5, #0
	b _08022116
	.align 2, 0
_080220FC: .4byte 0xFFE00000
_08022100:
	ldr r4, _0802211C
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
_08022116:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802211C: .4byte gUnknown_020041EA
	.syntax divided
