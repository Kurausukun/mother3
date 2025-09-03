	.syntax unified
	push {r4, r5, lr}
	ldr r4, _080068D8
	ldr r5, _080068DC
	ldr r0, _080068E0
	ldr r1, _080068E4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080068EC
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _080068E8
	b _080068F2
	.align 2, 0
_080068D8: .4byte gUnknown_0202A6F8
_080068DC: .4byte 0x06008020
_080068E0: .4byte gGame
_080068E4: .4byte 0x0000598C
_080068E8: .4byte gUnknown_080C2850
_080068EC:
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _08006918
_080068F2:
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	adds r5, #0x20
	ldr r0, _0800691C
	ldr r1, _08006920
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08006928
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	ldr r1, _08006924
	b _0800692E
	.align 2, 0
_08006918: .4byte gUnknown_080C2970
_0800691C: .4byte gGame
_08006920: .4byte 0x0000598C
_08006924: .4byte gUnknown_080C2850
_08006928:
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	ldr r1, _08006940
_0800692E:
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001A14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006940: .4byte gUnknown_080C2970
	.syntax divided
