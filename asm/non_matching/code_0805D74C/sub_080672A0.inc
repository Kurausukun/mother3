	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _080672E4
	ldr r1, [r4, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _080672E0
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08067304
	b _080672E4
_080672E0:
	movs r0, #2
	str r0, [r5]
_080672E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
