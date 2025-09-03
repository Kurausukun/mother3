	.syntax unified
sub_08012BD8:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08012C04
	movs r1, #0
_08012BE6:
	ldrb r2, [r3, #0x14]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _08012C08
	lsrs r0, r2, #3
	cmp r0, r5
	bne _08012C08
	ldrb r0, [r3, #0x15]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r4
	bne _08012C08
	movs r0, #1
	b _08012C16
	.align 2, 0
_08012C04: .4byte gUnknown_0200BD70
_08012C08:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #0x18
	cmp r1, #0x13
	bls _08012BE6
	movs r0, #0
_08012C16:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
