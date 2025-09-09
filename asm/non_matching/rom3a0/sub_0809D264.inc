	.syntax unified
sub_0809D264:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807BE90
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r4, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r4, r4, r2
	ldr r2, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
