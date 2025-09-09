	.syntax unified
sub_080A0B54:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r0, _080A0B88
	ldr r1, _080A0B8C
	bl randS32
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r3
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A0B88: .4byte 0x000002BB
_080A0B8C: .4byte 0x000002CD
	.syntax divided
