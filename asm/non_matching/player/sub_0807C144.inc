	.syntax unified
sub_0807C144:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0
	cmp r5, r0
	bge _0807C180
	movs r1, #1
_0807C180:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
