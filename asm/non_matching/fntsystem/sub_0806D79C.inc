	.syntax unified
sub_0806D79C:
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x20]
	adds r0, #0x30
	adds r1, r2, #0
	bl sub_08087F3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806D7C6
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _0806D7C8
_0806D7C6:
	movs r0, #0
_0806D7C8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
