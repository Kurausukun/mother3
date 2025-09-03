	.syntax unified
sub_08061AE8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08061B28
_08061AF0:
	ldr r0, _08061B2C
	adds r0, r4, r0
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #1
	bne _08061B1C
	ldr r1, [r5, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_08061B1C:
	adds r4, #1
	cmp r4, #4
	ble _08061AF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061B28: .4byte gLevelStatTable
_08061B2C: .4byte gSave
	.syntax divided
