	.syntax unified
sub_080BA908:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl tryCastPlayer__5GoodsP4Unit
	ldr r1, [r0, #0x1c]
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r6, r1, r3
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r0, r4
	adds r3, #0x48
	adds r2, r1, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	bl nullsub_39
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
