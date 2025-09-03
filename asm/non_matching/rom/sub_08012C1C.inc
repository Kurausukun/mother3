	.syntax unified
sub_08012C1C:
	push {lr}
	ldr r1, _08012C30
	movs r2, #0
_08012C22:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08012C34
	adds r0, r1, #0
	b _08012C42
	.align 2, 0
_08012C30: .4byte gUnknown_0200BD70
_08012C34:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #0x18
	cmp r2, #0x13
	bls _08012C22
	movs r0, #0
_08012C42:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
