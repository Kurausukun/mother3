	.syntax unified
sub_0802BA28:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
_0802BA32:
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802BA52
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0802BA68
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BA52
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _0802BA60
_0802BA52:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802BA32
	movs r0, #1
	rsbs r0, r0, #0
_0802BA60:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
