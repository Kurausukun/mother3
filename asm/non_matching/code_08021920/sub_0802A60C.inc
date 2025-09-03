	.syntax unified
	push {lr}
	movs r1, #0
	adds r2, r0, #0
	adds r2, #0x3c
_0802A614:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A620
	movs r0, #1
	b _0802A62C
_0802A620:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0802A614
	movs r0, #0
_0802A62C:
	pop {r1}
	bx r1
	.syntax divided
