	.syntax unified
sub_0802AF24:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802AF60
	movs r3, #0
	adds r6, r1, #0
	movs r5, #0x6c
	movs r4, #0
	ldr r1, _0802AF5C
_0802AF3C:
	cmp r6, #0
	beq _0802AF50
	adds r0, r3, #0
	muls r0, r5, r0
	adds r2, r0, r1
	ldr r0, [r2, #0x20]
	str r0, [r2, #0x18]
	ldrh r0, [r2, #0x24]
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x30]
_0802AF50:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _0802AF3C
	b _0802AF7C
	.align 2, 0
_0802AF5C: .4byte gCharStats
_0802AF60:
	cmp r1, #0
	beq _0802AF7C
	cmp r1, #0xf
	bgt _0802AF7C
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _0802AF84
	adds r2, r1, r0
	ldr r0, [r2, #0x20]
	str r0, [r2, #0x18]
	ldrh r0, [r2, #0x24]
	movs r1, #0
	strh r0, [r2, #0x1c]
	strh r1, [r2, #0x30]
_0802AF7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AF84: .4byte gCharStats
	.syntax divided
