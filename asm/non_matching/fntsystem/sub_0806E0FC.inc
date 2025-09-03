	.syntax unified
sub_0806E0FC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r5, r4
	blt _0806E146
	cmp r4, #0
	bgt _0806E120
	movs r5, #0
	b _0806E146
_0806E120:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E144
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08090F80
	adds r5, r0, #0
	b _0806E146
_0806E144:
	adds r5, r4, #0
_0806E146:
	strh r5, [r6, #0x24]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
