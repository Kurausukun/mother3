	.syntax unified
sub_080B7FE8:
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x64
	bl sub_0807066C
	rsbs r0, r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
