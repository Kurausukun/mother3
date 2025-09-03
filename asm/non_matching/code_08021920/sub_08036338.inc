	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0
	bl sub_08036388
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08036360
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _0803637C
_08036360:
	movs r0, #0x10
	bl sub_0803B800
	movs r2, #0
	strh r4, [r0]
	strh r6, [r0, #2]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r1, _08036384
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r0, [r7, #0x3c]
_0803637C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036384: .4byte 0x0000FFFF
	.syntax divided
