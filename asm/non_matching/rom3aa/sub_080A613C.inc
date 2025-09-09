	.syntax unified
sub_080A613C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6188
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
_080A6188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
