	.syntax unified
	push {lr}
	movs r2, #0
	movs r1, #0
	adds r3, r0, #0
	adds r3, #0x3c
_080546BA:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080546C8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080546C8:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _080546BA
	adds r0, r2, #0
	pop {r1}
	bx r1
	.syntax divided
