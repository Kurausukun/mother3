	.syntax unified
sub_0806D7DC:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806D7F4
	adds r2, r0, #0
	adds r2, #0x68
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #0x10
	b _0806D804
_0806D7F4:
	adds r2, r0, #0
	adds r2, #0x68
	ldrh r1, [r2]
	ldr r0, _0806D80C
	ands r0, r1
	ldr r1, _0806D810
	ands r0, r1
	movs r1, #8
_0806D804:
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0806D80C: .4byte 0x0000FFFD
_0806D810: .4byte 0x0000FFEF
	.syntax divided
