	.syntax unified
sub_080A647C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6512
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6514
_080A6512:
	movs r0, #0
_080A6514:
	cmp r0, #0
	beq _080A6582
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6582
	lsls r0, r0, #2
	ldr r1, _080A6530
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6530: .4byte _080A6534
_080A6534:
	.4byte _080A6548
	.4byte _080A6552
	.4byte _080A655A
	.4byte _080A6562
	.4byte _080A656A
_080A6548:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080A6572
_080A6552:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	b _080A6570
_080A655A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	b _080A6570
_080A6562:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8f
	lsls r0, r0, #3
	b _080A6570
_080A656A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #3
_080A6570:
	adds r1, r1, r0
_080A6572:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _080A6584
_080A6582:
	movs r0, #0
_080A6584:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
