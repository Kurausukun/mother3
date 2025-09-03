	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r4, #0
	adds r3, #0x24
	cmp r5, #0
	bne _08051274
	movs r5, #1
_08051274:
	ldrb r0, [r3, #6]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #0x3d
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3, #6]
	movs r0, #0
	strh r0, [r3, #2]
	strh r5, [r4, #0x24]
	movs r0, #1
	strh r0, [r3, #4]
	lsls r2, r2, #6
	ldrb r1, [r3, #6]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #6]
	lsls r0, r6, #4
	strh r0, [r4, #0xc]
	lsls r0, r7, #4
	strh r0, [r4, #0xe]
	ldrh r0, [r4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
