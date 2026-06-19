	.syntax unified
sub_0809FD08:
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0xba
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
