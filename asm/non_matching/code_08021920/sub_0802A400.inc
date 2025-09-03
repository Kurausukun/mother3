	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x3c
_0802A40C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, r1
	bne _0802A41A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	b _0802A428
_0802A41A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A40C
	movs r0, #1
	rsbs r0, r0, #0
_0802A428:
	pop {r1}
	bx r1
	.syntax divided
