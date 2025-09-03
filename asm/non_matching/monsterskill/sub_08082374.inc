	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x48]
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080823B0
	ldr r1, [r2, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080823BA
_080823B0:
	cmp r0, #0
	bgt _080823B8
	movs r0, #0
	b _080823BA
_080823B8:
	ldrh r0, [r1, #6]
_080823BA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
