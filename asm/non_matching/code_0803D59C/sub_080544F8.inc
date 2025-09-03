	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _08054524
	adds r1, #0x10
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0x63
	bls _08054510
	movs r0, #0x63
_08054510:
	strb r0, [r2]
	ldrb r0, [r2]
	adds r0, r0, r3
	cmp r0, #0x62
	ble _0805451C
	movs r0, #0x63
_0805451C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08054524: .4byte gSave
	.syntax divided
