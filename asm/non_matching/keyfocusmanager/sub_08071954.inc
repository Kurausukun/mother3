	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0806BE14
	adds r4, r0, #0
	ldr r5, [r6, #0x3c]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806C010
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	ldr r0, _080719C0
	ands r1, r0
	str r1, [r4]
	ldrh r2, [r6, #0x3a]
	movs r0, #0xff
	ands r0, r2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A5C
	ldrh r1, [r4, #4]
	orrs r1, r0
	strh r1, [r4, #4]
	adds r0, r6, #0
	bl sub_08071A78
	lsls r0, r0, #0xc
	ldrh r1, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080719C0: .4byte 0x01FF0000
	.syntax divided
