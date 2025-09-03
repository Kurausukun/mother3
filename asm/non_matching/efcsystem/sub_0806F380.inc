	.syntax unified
sub_0806F380:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, r0, #0
	ldrh r0, [r7, #0x2c]
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F42C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F52C
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r7, #0x30]
	adds r0, #0x84
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r7, #0x30]
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xa8
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
