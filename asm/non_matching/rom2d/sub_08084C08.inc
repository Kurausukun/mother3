	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #1
	bne _08084C2C
	ldr r4, [r2, #0x1c]
	adds r4, #0x88
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r2, r5
	bl sub_08070754
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	b _08084C42
_08084C2C:
	cmp r0, #2
	bne _08084C42
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_08084C42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
