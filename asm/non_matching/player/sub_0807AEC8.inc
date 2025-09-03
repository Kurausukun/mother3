	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0xfc
_0807AED2:
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldr r1, [r6]
	adds r1, #0x34
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807AF00
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0]
_0807AF00:
	adds r5, #1
	cmp r5, #3
	ble _0807AED2
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
