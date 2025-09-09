	.syntax unified
sub_080A0300:
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A0318
	cmp r2, #1
	bne _080A0344
_080A0318:
	str r1, [r3]
	ldr r1, [r4, #0x1c]
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	b _080A0346
_080A0344:
	movs r0, #0
_080A0346:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
