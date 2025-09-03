	.syntax unified
sub_08065D40:
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _08065D5C
	ldr r1, [r2, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08065D5C:
	pop {r0}
	bx r0
	.syntax divided
