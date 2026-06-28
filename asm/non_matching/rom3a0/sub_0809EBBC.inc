	.syntax unified
sub_0809EBBC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x50]
	subs r0, #1
	movs r1, #3
	bl Remainder
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r5, #0x60
	adds r0, r5, #0
	adds r1, r4, #0
	bl setup__5SoundUs
	adds r0, r5, #0
	movs r1, #0
	bl play__5Soundi
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
