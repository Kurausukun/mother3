	.syntax unified
sub_0807DDF0:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807DE06
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0807DE10
_0807DE06:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0807DE10:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
