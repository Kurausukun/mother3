	.syntax unified
sub_080A6620:
	push {r4, r5, lr}
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
	bgt _080A6644
	ldr r0, _080A6640
	b _080A66AC
	.align 2, 0
_080A6640: .4byte 0x000001A9
_080A6644:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6680
	cmp r0, r5
	bne _080A6688
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6684
	cmp r0, #0x14
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x28
	blt _080A66AA
	adds r1, #4
	cmp r0, #0x50
	bge _080A66AA
	subs r1, #3
	b _080A66AA
	.align 2, 0
_080A6680: .4byte 0x0000026A
_080A6684: .4byte 0x00000265
_080A6688:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A66B8
	cmp r0, #0xf
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x1e
	blt _080A66AA
	adds r1, #1
	cmp r0, #0x46
	blt _080A66AA
	adds r1, #3
	cmp r0, #0x50
	bge _080A66AA
	adds r1, r5, #0
_080A66AA:
	adds r0, r1, #0
_080A66AC:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A66B8: .4byte 0x00000265
	.syntax divided
