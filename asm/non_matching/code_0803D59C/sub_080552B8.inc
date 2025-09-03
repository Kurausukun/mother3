	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080552BE:
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080552D4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08055190
_080552D4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080552BE
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
