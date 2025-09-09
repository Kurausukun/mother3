	.syntax unified
sub_080A67A0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A67C4
	ldr r0, _080A67C0
	b _080A6880
	.align 2, 0
_080A67C0: .4byte 0x000001A9
_080A67C4:
	ldr r1, [r4, #0x1c]
	movs r6, #0x85
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _080A6810
	cmp r0, r7
	beq _080A67FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6814
	cmp r0, r5
	bne _080A681C
_080A67FC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6818
	cmp r0, #0x32
	bge _080A687E
	subs r1, #2
	b _080A687E
	.align 2, 0
_080A6810: .4byte 0x0000026E
_080A6814: .4byte 0x00000266
_080A6818: .4byte 0x00000267
_080A681C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6854
	cmp r0, r6
	bne _080A685C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6858
	cmp r0, #0x19
	blt _080A687E
	adds r1, #2
	cmp r0, #0x41
	blt _080A687E
	adds r1, r5, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r7, #0
	b _080A687E
	.align 2, 0
_080A6854: .4byte 0x0000026A
_080A6858: .4byte 0x00000265
_080A685C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A688C
	cmp r0, #0x14
	blt _080A687E
	adds r1, #2
	cmp r0, #0x37
	blt _080A687E
	adds r1, r7, #0
	cmp r0, #0x41
	blt _080A687E
	adds r1, r6, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r5, #0
_080A687E:
	adds r0, r1, #0
_080A6880:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A688C: .4byte 0x00000265
	.syntax divided
