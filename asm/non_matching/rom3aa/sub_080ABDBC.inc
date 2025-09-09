	.syntax unified
sub_080ABDBC:
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080ABDE6
	cmp r0, #1
	bgt _080ABDD6
	cmp r0, #0
	beq _080ABDDC
	b _080ABE04
_080ABDD6:
	cmp r0, #2
	beq _080ABDEE
	b _080ABE04
_080ABDDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080ABDF6
_080ABDE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080ABDF4
_080ABDEE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
_080ABDF4:
	adds r1, r1, r0
_080ABDF6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ABE06
_080ABE04:
	movs r0, #0
_080ABE06:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
