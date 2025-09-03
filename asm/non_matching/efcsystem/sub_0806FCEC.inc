	.syntax unified
	push {lr}
	ldr r2, [r0, #0x2c]
	cmp r1, #0
	ble _0806FD08
_0806FCF4:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r2, r2, r0
	subs r1, #1
	cmp r1, #0
	bne _0806FCF4
_0806FD08:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
