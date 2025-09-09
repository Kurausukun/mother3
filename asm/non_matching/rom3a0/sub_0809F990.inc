	.syntax unified
sub_0809F990:
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r5, r1
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl __5GoodsUsP4UnitUs
	adds r0, r6, #0
	mov r1, sp
	bl action_1d8__C5Goods
	mov r0, sp
	movs r1, #2
	bl _._5Goods
	adds r0, r6, #0
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
