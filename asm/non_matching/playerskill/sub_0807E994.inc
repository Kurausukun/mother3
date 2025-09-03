	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	cmp r1, #0
	blt _0807EA1C
	cmp r2, #0
	blt _0807EA1C
	cmp r2, #2
	bgt _0807EA1C
	cmp r3, #0
	blt _0807EA1C
	cmp r3, #1
	bgt _0807EA1C
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r1, r0, r3
	adds r6, r5, #0
	adds r6, #0x28
	ldr r0, [r6, #4]
	cmp r1, r0
	bge _0807EA1C
	lsls r7, r1, #1
	ldr r0, [r6, #8]
	adds r0, r0, r7
	ldrh r4, [r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0807EA1C
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r6, #8]
	adds r1, r1, r7
	ldrh r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807EA1E
_0807EA1C:
	movs r0, #0
_0807EA1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
