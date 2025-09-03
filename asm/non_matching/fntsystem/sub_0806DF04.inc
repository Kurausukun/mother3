	.syntax unified
sub_0806DF04:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0806DF1A
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _0806DF24
_0806DF1A:
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0806DF24:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
