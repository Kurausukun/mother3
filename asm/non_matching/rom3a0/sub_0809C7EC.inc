	.syntax unified
sub_0809C7EC:
	push {r4, lr}
	adds r4, r0, #0
	bl unit_90__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x87
	lsls r1, r1, #2
	adds r4, r4, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
