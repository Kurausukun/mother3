	.syntax unified
sub_080708E0:
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x2c]
	cmp r0, #0
	bne _080708EE
	str r1, [r3, #0x2c]
	b _080708FC
_080708EE:
	adds r2, r0, #0
	b _080708F4
_080708F2:
	ldr r2, [r2, #0x28]
_080708F4:
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _080708F2
	str r1, [r2, #0x28]
_080708FC:
	str r3, [r1, #0x24]
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
