	.syntax unified
sub_080B39F4:
	push {r4, lr}
	adds r4, r0, #0
	bl tellUseMessage__6Action
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
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
