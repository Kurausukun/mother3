	.syntax unified
sub_08072518:
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	cmp r2, #0
	beq _08072544
	ldr r1, [r2, #0x1c]
	adds r1, #0x50
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08072544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
