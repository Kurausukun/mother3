	.syntax unified
sub_080868A0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036E70
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806C0B4
	adds r6, r0, #0
	adds r2, r7, #0
	adds r2, #0x20
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x40
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	ldr r4, _08086984
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x60
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0x80
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xa0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xc0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r7, #0
	adds r2, #0xe0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r7, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0806C0B4
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086984: .4byte gUnknown_020040C0
	.syntax divided
