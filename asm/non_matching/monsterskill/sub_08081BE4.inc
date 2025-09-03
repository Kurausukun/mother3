	.syntax unified
sub_08081BE4:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
