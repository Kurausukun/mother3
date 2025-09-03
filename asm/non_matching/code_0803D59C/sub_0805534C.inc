	.syntax unified
sub_0805534C:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08055368
	ldr r3, _0805536C
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	adds r6, r1, #0
	cmp r0, #0
	bge _08055370
	movs r0, #0xad
	b _08055480
	.align 2, 0
_08055368: .4byte gSomeBlend
_0805536C: .4byte 0x000044F2
_08055370:
	lsls r0, r2, #4
	adds r3, r0, r6
	ldr r4, _08055390
	adds r1, r3, r4
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _0805539C
	ldr r1, _08055394
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055398
	movs r0, #0xb2
	b _08055480
	.align 2, 0
_08055390: .4byte 0x0000C5D3
_08055394: .4byte 0x0000C5D2
_08055398:
	movs r0, #0xa1
	b _08055480
_0805539C:
	ldr r2, _080553B8
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _080553C4
	ldr r1, _080553BC
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080553C0
	movs r0, #0xb2
	b _08055480
	.align 2, 0
_080553B8: .4byte 0x0000C5CE
_080553BC: .4byte 0x0000C5D2
_080553C0:
	movs r0, #0xa0
	b _08055480
_080553C4:
	ldr r2, _080553E0
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080553EC
	ldr r4, _080553E4
	adds r0, r3, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080553E8
	movs r0, #0xa3
	b _08055480
	.align 2, 0
_080553E0: .4byte 0x0000C5D4
_080553E4: .4byte 0x0000C5D0
_080553E8:
	movs r0, #0xab
	b _08055480
_080553EC:
	ldr r2, _080553FC
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _08055400
	movs r0, #0xa2
	b _08055480
	.align 2, 0
_080553FC: .4byte 0x0000C5D0
_08055400:
	movs r1, #0
	movs r2, #0
	ldr r4, _08055430
	adds r0, r3, r4
	ldrh r3, [r0]
	movs r4, #1
_0805540C:
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0805541C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0805541C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0805540C
	cmp r1, #1
	bls _08055434
	movs r0, #0xaa
	b _08055480
	.align 2, 0
_08055430: .4byte 0x0000C5D8
_08055434:
	adds r0, r5, r6
	ldr r1, _08055448
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0805544C
	movs r0, #0xa4
	b _08055480
	.align 2, 0
_08055448: .4byte 0x0000C5D8
_0805544C:
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _08055456
	movs r0, #0xa5
	b _08055480
_08055456:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _08055460
	movs r0, #0xa6
	b _08055480
_08055460:
	lsls r0, r1, #0x1a
	cmp r0, #0
	bge _0805546A
	movs r0, #0xa7
	b _08055480
_0805546A:
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _08055474
	movs r0, #0xa8
	b _08055480
_08055474:
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _0805547E
	movs r0, #0xab
	b _08055480
_0805547E:
	movs r0, #0xa9
_08055480:
	bl sub_080486A0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
