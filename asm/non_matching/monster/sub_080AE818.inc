    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc2
	bne _080AE83C
	movs r0, #0x1d
	b _080AE874
_080AE83C:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AE85C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xc2
	cmp r0, #0x32
	bge _080AE858
	movs r1, #2
_080AE858:
	adds r0, r1, #0
	b _080AE874
_080AE85C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x21
	blt _080AE874
	movs r0, #0xc2
	cmp r1, #0x42
	bge _080AE874
	movs r0, #0x84
_080AE874:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
    .syntax divided
