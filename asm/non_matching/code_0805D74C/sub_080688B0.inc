	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r1, #2
	ldrsh r0, [r2, r1]
	movs r1, #0
	cmp r0, #0
	bgt _080688C8
	ldr r0, [r3, #0x18]
	cmp r0, #0
	ble _080688C8
	movs r1, #1
_080688C8:
	strb r1, [r2, #6]
	ldr r1, [r4]
	ldr r4, [r3, #0x18]
	ldrh r5, [r3, #0x1c]
	cmp r1, #3
	blt _080688FA
	cmp r1, #4
	ble _080688DE
	cmp r1, #5
	beq _080688EA
	b _080688FA
_080688DE:
	ldr r0, [r3, #0x20]
	cmp r4, r0
	blt _080688FA
	movs r0, #1
	strb r0, [r2, #7]
	b _080688FA
_080688EA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x24
	ldrsh r1, [r3, r6]
	cmp r0, r1
	blt _080688FA
	movs r0, #1
	strb r0, [r2, #8]
_080688FA:
	ldrh r0, [r2, #2]
	subs r0, r4, r0
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	subs r0, r5, r0
	strh r0, [r2, #4]
	ldrh r0, [r2, #0xc]
	ldrh r1, [r3, #0x30]
	eors r0, r1
	strh r0, [r2, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
