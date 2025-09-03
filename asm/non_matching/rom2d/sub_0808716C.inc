	.syntax unified
sub_0808716C:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080871AC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087194
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080871A4
_08087194:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
_080871A4:
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	orrs r0, r1
	b _080871D6
_080871AC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080871C6
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080871D0
_080871C6:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_080871D0:
	ldrh r1, [r4, #0x2a]
	ldr r0, _080871E0
	ands r0, r1
_080871D6:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080871E0: .4byte 0x0000FFFD
	.syntax divided
