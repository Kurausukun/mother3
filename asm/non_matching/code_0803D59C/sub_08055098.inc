	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
_080550A2:
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _080550C2
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080550C2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _080550D0
_080550C2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080550A2
	movs r0, #1
	rsbs r0, r0, #0
_080550D0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
