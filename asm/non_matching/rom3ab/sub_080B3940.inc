	.syntax unified
sub_080B3940:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	bl sub_08072FE0
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
