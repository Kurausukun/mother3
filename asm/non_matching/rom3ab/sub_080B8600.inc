	.syntax unified
sub_080B8600:
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08082660
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8612
	b _080B8912
_080B8612:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8656
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	b _080B890E
_080B8656:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8688
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	b _080B890E
_080B8688:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B86B6
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	b _080B890E
_080B86B6:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B86E4
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	b _080B890E
_080B86E4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8712
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x29
	b _080B890E
_080B8712:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8740
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	b _080B890E
_080B8740:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B876E
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	b _080B890E
_080B876E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B879C
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	b _080B890E
_080B879C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B87CA
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2c
	b _080B890E
_080B87CA:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B87F8
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	b _080B890E
_080B87F8:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8826
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	b _080B890E
_080B8826:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8854
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	b _080B890E
_080B8854:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B8882
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x2d
	b _080B890E
_080B8882:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B88B0
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	b _080B890E
_080B88B0:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B88DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	b _080B890E
_080B88DE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080B88FC
	movs r0, #0
	b _080B8914
_080B88FC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
_080B890E:
	bl _call_via_r2
_080B8912:
	movs r0, #1
_080B8914:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
