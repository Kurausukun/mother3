	.syntax unified
sub_08055694:
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _080556B8
	lsrs r0, r0, #0xc
	adds r1, r0, r1
	ldr r2, _080556BC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055740
	ldr r2, _080556C0
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080556C4
	movs r0, #0x85
	lsls r0, r0, #3
	b _08055742
	.align 2, 0
_080556B8: .4byte gSomeBlend
_080556BC: .4byte 0x0000C5D2
_080556C0: .4byte 0x0000C5D3
_080556C4:
	ldr r2, _080556D8
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _080556DC
	movs r0, #0x85
	lsls r0, r0, #3
	b _08055742
	.align 2, 0
_080556D8: .4byte 0x0000C5CE
_080556DC:
	ldr r2, _080556F8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805570C
	subs r2, #4
	adds r0, r1, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08055700
	ldr r0, _080556FC
	b _08055742
	.align 2, 0
_080556F8: .4byte 0x0000C5D4
_080556FC: .4byte 0x00000426
_08055700:
	ldr r0, _08055708
	bl play_sound
	b _08055746
	.align 2, 0
_08055708: .4byte 0x000003E6
_0805570C:
	ldr r2, _0805571C
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08055724
	ldr r0, _08055720
	b _08055742
	.align 2, 0
_0805571C: .4byte 0x0000C5D0
_08055720: .4byte 0x00000426
_08055724:
	ldr r2, _08055738
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08055740
	ldr r0, _0805573C
	bl play_sound
	movs r0, #0
	b _08055748
	.align 2, 0
_08055738: .4byte 0x0000C5D8
_0805573C: .4byte 0x000003E6
_08055740:
	ldr r0, _0805574C
_08055742:
	bl play_sound
_08055746:
	movs r0, #1
_08055748:
	pop {r1}
	bx r1
	.align 2, 0
_0805574C: .4byte 0x00000427
	.syntax divided
