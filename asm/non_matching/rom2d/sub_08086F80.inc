	.syntax unified
sub_08086F80:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08086FCE
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bls _08086FCE
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086FBC
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _08086FC6
_08086FBC:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_08086FC6:
	ldrh r1, [r4, #0x2a]
	ldr r0, _08086FD4
	ands r0, r1
	strh r0, [r4, #0x2a]
_08086FCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086FD4: .4byte 0x0000FFFD
	.syntax divided
