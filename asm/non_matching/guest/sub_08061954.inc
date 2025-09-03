	.syntax unified
sub_08061954:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x28]
	cmp r0, r1
	bne _08061966
	cmp r2, #1
	bne _0806196C
_08061966:
	str r1, [r3, #0x28]
	movs r0, #1
	b _0806196E
_0806196C:
	movs r0, #0
_0806196E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
