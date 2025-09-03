	.syntax unified
sub_08087A48:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0x24]
	cmp r0, #0
	ble _08087A92
	asrs r0, r0, #2
	movs r1, #8
	cmp r1, r0
	bge _08087A5C
	adds r1, r0, #0
_08087A5C:
	cmp r1, #0
	ble _08087A92
	adds r6, r7, #0
	adds r6, #0x28
	adds r5, r1, #0
_08087A66:
	ldr r1, [r7, #0x24]
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r4, r0, #0
	ldr r1, [r7, #0x24]
	subs r1, #1
	movs r0, #0
	bl randS32
	lsls r4, r4, #2
	adds r4, r6, r4
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	str r1, [r4]
	str r2, [r0]
	subs r5, #1
	cmp r5, #0
	bne _08087A66
_08087A92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
