	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_08003DF8
	adds r3, r0, #0
	cmp r3, #0
	beq _08003D06
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x7f
	ble _08003CF0
	movs r4, #0x7f
	b _08003CFA
_08003CF0:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08003CFA
	ldr r4, _08003D0C
_08003CFA:
	ldr r1, _08003D10
	lsls r2, r4, #0x18
	asrs r2, r2, #0x18
	adds r0, r3, #0
	bl m4aMPlayPanpotControl
_08003D06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D0C: .4byte 0x0000FF80
_08003D10: .4byte 0x0000FFFF
	.syntax divided
