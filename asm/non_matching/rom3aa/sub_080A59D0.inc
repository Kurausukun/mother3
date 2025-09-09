	.syntax unified
sub_080A59D0:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, r4
	bge _080A59F0
	adds r0, r4, #0
_080A59F0:
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl setHP__7Monsteri
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
