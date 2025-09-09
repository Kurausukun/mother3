	.syntax unified
sub_080BA960:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BA9D4
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xe6
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	asrs r1, r1, #0x11
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	subs r0, r0, r6
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1]
	movs r0, #1
	b _080BA9D6
_080BA9D4:
	movs r0, #0
_080BA9D6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
