	.syntax unified
sub_080C0AF8:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _080C0B3C
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #1
	movs r1, #3
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl InitHeal
	movs r0, #0x28
	bl setsleep
_080C0B3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
