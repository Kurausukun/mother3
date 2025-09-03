	.syntax unified
sub_0805B670:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r2, [r3]
	ldr r0, [r1]
	adds r2, r2, r0
	str r2, [r3]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	cmp r2, #0
	ble _0805B694
	ldr r0, [r4]
	cmp r0, r2
	ble _0805B696
	adds r0, r2, #0
	b _0805B696
_0805B694:
	movs r0, #0
_0805B696:
	str r0, [r3]
	ldrh r5, [r3, #4]
	movs r6, #4
	ldrsh r2, [r3, r6]
	cmp r2, #0
	ble _0805B6B0
	ldrh r1, [r4, #4]
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, r2
	ble _0805B6B2
	adds r1, r5, #0
	b _0805B6B2
_0805B6B0:
	movs r1, #0
_0805B6B2:
	strh r1, [r3, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
