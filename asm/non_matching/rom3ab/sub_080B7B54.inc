	.syntax unified
sub_080B7B54:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082668
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7BB2
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7BB2
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #1
	bne _080B7BB4
_080B7BB2:
	movs r1, #1
_080B7BB4:
	cmp r1, #0
	beq _080B7BBC
	movs r0, #1
	b _080B7C06
_080B7BBC:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B7C04
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080B7C04:
	movs r0, #0
_080B7C06:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
