	.syntax unified
sub_080B4F28:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl onDamage__6ActionP4Unit
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
