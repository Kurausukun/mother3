	.syntax unified
sub_080AADB0:
	push {lr}
	adds r2, r0, #0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080AADCA
	movs r0, #0x3c
	cmp r0, r1
	bge _080AADC8
	adds r0, r1, #0
_080AADC8:
	adds r1, r0, #0
_080AADCA:
	adds r0, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0
	.syntax divided
