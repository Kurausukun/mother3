	.syntax unified
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r4, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r2, #0xaa
	blt _08054382
	cmp r2, #0xab
	ble _08054378
	cmp r2, #0xb0
	bne _08054382
_08054378:
	adds r2, r4, #0
	bl sub_0805486C
	movs r0, #1
	b _08054384
_08054382:
	movs r0, #0
_08054384:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
