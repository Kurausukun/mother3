	.syntax unified
	push {r4, r5, lr}
	ldr r1, _0806C7EC
	ldr r0, [r1]
	cmp r0, #0
	ble _0806C7E4
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806C7E4
	ldr r5, _0806C7F0
	ldr r2, [r5]
	cmp r2, #0
	beq _0806C7E2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806C7E2:
	str r4, [r5]
_0806C7E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C7EC: .4byte gUnknown_02001D28
_0806C7F0: .4byte gUnknown_02001D2C
	.syntax divided
