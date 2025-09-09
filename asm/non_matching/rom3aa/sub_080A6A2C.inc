	.syntax unified
sub_080A6A2C:
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6A44
	cmp r0, #1
	beq _080A6A4E
	movs r0, #0
	b _080A6A62
_080A6A44:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6A56
_080A6A4E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6A56:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A6A62:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
