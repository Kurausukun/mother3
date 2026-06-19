	.syntax unified
sub_080B3D6C:
	push {r4, lr}
	adds r0, r1, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	cmp r4, #0
	beq _080B3DA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080B3DA6:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
