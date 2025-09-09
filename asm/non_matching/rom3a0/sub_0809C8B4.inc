	.syntax unified
sub_0809C8B4:
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xf6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	pop {r0}
	bx r0
	.syntax divided
