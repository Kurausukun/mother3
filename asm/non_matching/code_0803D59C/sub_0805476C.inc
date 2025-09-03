	.syntax unified
sub_0805476C:
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r0, #0x3c
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, r5
	bne _08054792
	movs r2, #0
	strb r2, [r1]
	lsls r1, r4, #1
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r0, r1
	strh r2, [r0]
	b _0805479C
_08054792:
	adds r0, r3, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08054720
_0805479C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
