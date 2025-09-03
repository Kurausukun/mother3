	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r2, [r3]
	ldr r0, [r1]
	subs r2, r2, r0
	str r2, [r3]
	ldrh r0, [r3, #4]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r3, #4]
	cmp r2, #0
	ble _0805B6E0
	ldr r0, [r4]
	cmp r0, r2
	ble _0805B6E2
	adds r0, r2, #0
	b _0805B6E2
_0805B6E0:
	movs r0, #0
_0805B6E2:
	str r0, [r3]
	ldrh r5, [r3, #4]
	movs r0, #4
	ldrsh r2, [r3, r0]
	cmp r2, #0
	ble _0805B6FC
	ldrh r1, [r4, #4]
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, r2
	ble _0805B6FE
	adds r1, r5, #0
	b _0805B6FE
_0805B6FC:
	movs r1, #0
_0805B6FE:
	strh r1, [r3, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
