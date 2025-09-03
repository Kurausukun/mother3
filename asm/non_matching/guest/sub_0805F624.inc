	.syntax unified
sub_0805F624:
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	subs r0, r5, #4
	adds r1, r5, #4
	bl randS32
	movs r5, #0
	cmp r0, #0
	blt _0805F654
	adds r5, r0, #0
	cmp r5, #0xff
	ble _0805F654
	movs r5, #0xff
_0805F654:
	adds r0, r4, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	cmp r4, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0805F6A4
_0805F6A2:
	movs r0, #2
_0805F6A4:
	lsls r0, r0, #8
	adds r0, #0xff
	subs r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
