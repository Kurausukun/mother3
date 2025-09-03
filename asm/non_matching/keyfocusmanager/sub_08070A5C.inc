	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r6, #1
	bne _08070A78
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _08070A82
_08070A78:
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_08070A82:
	strb r0, [r2]
	cmp r5, #1
	bne _08070AA8
	ldr r4, [r3, #0x2c]
	cmp r4, #0
	beq _08070AA8
_08070A8E:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r4, [r4, #0x28]
	cmp r4, #0
	bne _08070A8E
_08070AA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
