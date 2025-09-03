	.syntax unified
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	movs r1, #0
	bl sub_0804863C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080484CC
	cmp r4, r0
	beq _080484D0
	adds r0, #1
	cmp r4, r0
	beq _080484EC
	b _080484F4
	.align 2, 0
_080484CC: .4byte 0x0000FFE0
_080484D0:
	ldr r4, _080484E8
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080484FC
	b _080484F6
	.align 2, 0
_080484E8: .4byte gUnknown_020041EA
_080484EC:
	strh r4, [r5]
	adds r5, #2
	strh r1, [r5]
	adds r5, #2
_080484F4:
	adds r0, r5, #0
_080484F6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
