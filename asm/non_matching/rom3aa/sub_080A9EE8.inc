	.syntax unified
sub_080A9EE8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl removeOneStatus__4Uniti
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r4, #0x16
	bne _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	cmp r0, #0
	bgt _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
_080A9F34:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
