	.syntax unified
sub_08059594:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080595CE
	bl sub_08059840
	ldr r1, _080595D4
	ldrh r2, [r1, #8]
	movs r3, #0xc8
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	ldrb r1, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	str r5, [r6, #0x60]
_080595CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080595D4: .4byte gSomeBlend
	.syntax divided
