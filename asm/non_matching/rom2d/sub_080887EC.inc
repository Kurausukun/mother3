	.syntax unified
sub_080887EC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0808881C
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	strh r0, [r4]
	adds r1, r2, #0
	adds r1, #8
	str r1, [r4, #8]
	str r2, [r4, #4]
	ldrh r0, [r2, #6]
	strh r0, [r4, #0xc]
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r4, #0x14]
	str r2, [r4, #0x10]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
