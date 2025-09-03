	.syntax unified
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	movs r5, #0xf
	adds r1, r0, #0
	adds r1, #0x3c
_08055112:
	subs r2, r5, r3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _08055122
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	b _08055130
_08055122:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08055112
	movs r0, #1
	rsbs r0, r0, #0
_08055130:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
