	.syntax unified
sub_080B4A18:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl onPlayAnim__6ActionP4Unitb
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #0x7c
	adds r2, r5, #0
	bl PlayAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
