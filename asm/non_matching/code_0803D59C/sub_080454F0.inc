	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _08045530
	ldr r2, _08045534
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _08045538
	ldr r1, _0804553C
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _08045540
	cmp r1, r0
	beq _0804554C
	cmp r1, #0x1d
	bls _0804554C
	adds r0, r1, #0
	movs r1, #0x1e
	bl Divide
	ldr r2, _08045544
	adds r4, r6, r2
	strh r0, [r4]
	ldrh r0, [r4]
	bl sub_0805534C
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08055558
	ldr r2, _08045548
	adds r1, r6, r2
	b _08045560
	.align 2, 0
_08045530: .4byte gSomeBlend
_08045534: .4byte 0x000044EE
_08045538: .4byte gUnknown_0200F920
_0804553C: .4byte 0x00006470
_08045540: .4byte 0x0000FFFF
_08045544: .4byte 0x000044EC
_08045548: .4byte 0x000044F0
_0804554C:
	movs r0, #0
	bl sub_0805534C
	adds r5, r0, #0
	movs r0, #0
	bl sub_08055558
	ldr r1, _08045574
	ldr r2, _08045578
	adds r1, r1, r2
_08045560:
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x87
	bl sub_08047F28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045574: .4byte gSomeBlend
_08045578: .4byte 0x000044F0
	.syntax divided
