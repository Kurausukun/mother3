	.syntax unified
sub_080A5A00:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5A18
	cmp r0, #1
	beq _080A5A2E
	b _080A5A44
_080A5A18:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A2E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
