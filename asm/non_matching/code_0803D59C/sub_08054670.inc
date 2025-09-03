	.syntax unified
	push {lr}
	movs r1, #0
	adds r2, r0, #0
	adds r2, #0x3c
_08054678:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054684
	movs r0, #1
	b _08054690
_08054684:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _08054678
	movs r0, #0
_08054690:
	pop {r1}
	bx r1
	.syntax divided
