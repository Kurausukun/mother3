	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08086EEE
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	orrs r0, r1
	b _08086EFE
_08086EEE:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
	ldrh r1, [r4, #0x2a]
	ldr r0, _08086F08
	ands r0, r1
_08086EFE:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F08: .4byte 0x0000FFFE
	.syntax divided
