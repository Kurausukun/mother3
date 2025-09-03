	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _0805FA88
_0805FA50:
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805FA7C
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_0805FA7C:
	adds r5, #1
	cmp r5, #4
	ble _0805FA50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA88: .4byte gLevelStatTable
	.syntax divided
