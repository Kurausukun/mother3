	.syntax unified
sub_08036238:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	ldrh r4, [r0, #4]
	ldrh r5, [r0, #6]
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r1, [r6, #0x38]
	ldrh r0, [r1, #8]
	cmp r0, #0x64
	beq _08036280
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #8]
	muls r0, r1, r0
	movs r1, #0x64
	bl Divide
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08036280:
	strh r7, [r6, #4]
	strh r4, [r6, #6]
	ldr r3, [r6, #0x38]
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	movs r2, #0xe
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3]
	bl lerp
	ldr r1, [r6, #0x38]
	strh r0, [r1, #4]
	ldr r3, [r6, #0x38]
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	movs r2, #0x12
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3]
	bl lerp2
	ldr r1, [r6, #0x38]
	strh r0, [r1, #2]
	ldr r1, [r6, #0x38]
	ldrh r0, [r1, #2]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
