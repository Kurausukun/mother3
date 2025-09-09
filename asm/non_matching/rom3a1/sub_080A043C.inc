	.syntax unified
sub_080A043C:
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, r0
	bne _080A04A8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A0456
	cmp r0, #1
	beq _080A0490
	b _080A04A8
_080A0456:
	ldr r1, [r4, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	cmp r0, r1
	blt _080A04A8
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A04A8
_080A0490:
	ldr r1, [r4, #0x1c]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080A04A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
