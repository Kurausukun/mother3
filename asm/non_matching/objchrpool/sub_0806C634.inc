	.syntax unified
sub_0806C634:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsrs r1, r4, #4
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r1, r5
	ldr r0, [r0, #0x24]
	cmp r0, #0
	ble _0806C678
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C676
	adds r0, r1, r5
	ldr r5, [r0, #0x28]
_0806C65A:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, r4
	bhs _0806C670
	adds r3, r1, #1
	b _0806C672
_0806C670:
	adds r2, r1, #0
_0806C672:
	cmp r3, r2
	blt _0806C65A
_0806C676:
	adds r0, r3, #0
_0806C678:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
