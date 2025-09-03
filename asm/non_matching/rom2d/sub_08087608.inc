	.syntax unified
sub_08087608:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r1, #0
	ldr r0, [r3, #0x24]
	cmp r1, r0
	bge _0808764E
	adds r4, r3, #0
	adds r4, #0x24
	movs r0, #0x87
	lsls r0, r0, #3
	adds r5, r3, r0
	adds r2, r4, #0
_08087622:
	ldr r0, [r2, #4]
	cmp r0, r6
	bne _08087644
	cmp r1, #0
	ble _08087630
	ldr r0, [r2]
	b _08087650
_08087630:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808764E
	ldr r0, [r3, #0x24]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	b _08087650
_08087644:
	adds r2, #4
	adds r1, #1
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _08087622
_0808764E:
	movs r0, #0
_08087650:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
