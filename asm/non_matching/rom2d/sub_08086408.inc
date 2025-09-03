	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r5, r5, r0
	str r5, [r4, #0x3c]
	ldr r3, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r3, r3, r0
	str r3, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r2, [r4, #0x1c]
	adds r2, #0xc8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	asrs r5, r5, #0x10
	asrs r3, r3, #0x10
	mov r6, sp
	mov r1, sp
	strh r5, [r1]
	strh r3, [r6, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x3e
	ldrsh r3, [r4, r1]
	ldr r2, [r4, #0x40]
	asrs r2, r2, #0x10
	add r1, sp, #4
	strh r3, [r1]
	strh r2, [r1, #2]
	bl sub_080714A4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
