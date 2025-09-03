	.syntax unified
sub_0800EBD8:
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	ldrh r4, [r2]
	ldrh r3, [r2, #2]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0801AFA4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
