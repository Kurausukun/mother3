	.syntax unified
	push {lr}
	ldr r2, _0805847C
	ldr r1, _08058480
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #3
	bne _08058488
	ldr r1, _08058484
	b _08058492
	.align 2, 0
_0805847C: .4byte gSomeBlend
_08058480: .4byte 0x00002CE8
_08058484: .4byte gUnknown_09BCDD80
_08058488:
	cmp r0, #2
	beq _08058490
	movs r0, #0
	b _0805849E
_08058490:
	ldr r1, _080584A4
_08058492:
	ldr r3, _080584A8
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
_0805849E:
	pop {r1}
	bx r1
	.align 2, 0
_080584A4: .4byte gUnknown_09BCDD86
_080584A8: .4byte 0x00002CE6
	.syntax divided
