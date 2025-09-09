	.syntax unified
sub_080B7664:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08082664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x31
	movs r2, #0x1b
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0x1c
	movs r2, #0x31
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B76C8
	movs r0, #0
	b _080B76CA
_080B76C8:
	movs r0, #1
_080B76CA:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
