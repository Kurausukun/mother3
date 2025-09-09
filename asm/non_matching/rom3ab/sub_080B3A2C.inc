	.syntax unified
sub_080B3A2C:
	push {r4, r5, lr}
	adds r4, r0, #0
	bl action_70__6Action
	movs r0, #0x83
	bl sub_08072EE4
	adds r5, r0, #0
	cmp r5, #0
	beq _080B3A6A
	ldr r1, [r4, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080B3A6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
