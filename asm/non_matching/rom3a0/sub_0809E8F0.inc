	.syntax unified
sub_0809E8F0:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x58]
	cmp r0, r1
	bne _0809E902
	cmp r2, #1
	bne _0809E908
_0809E902:
	str r1, [r3, #0x58]
	movs r0, #1
	b _0809E90A
_0809E908:
	movs r0, #0
_0809E90A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
