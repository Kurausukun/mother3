	.syntax unified
sub_0807489C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #0x18
	bl sub_0807067C
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x40]
	adds r0, #1
	str r0, [r4, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
