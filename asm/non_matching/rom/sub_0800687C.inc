	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _080068AC
	ldr r5, _080068B0
	movs r4, #0
_08006884:
	adds r1, r6, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800689C
	lsls r0, r0, #5
	ldr r1, _080068B4
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r5, #0x20
_0800689C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x61
	bls _08006884
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080068AC: .4byte gUnknown_02029238
_080068B0: .4byte 0x06008020
_080068B4: .4byte gUnknown_080C2730
	.syntax divided
