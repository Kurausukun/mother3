	.syntax unified
sub_0802A98C:
	push {lr}
	movs r1, #0
	ldr r2, _0802A9A0
_0802A992:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A9A4
	movs r0, #1
	b _0802A9B0
	.align 2, 0
_0802A9A0: .4byte gUnknown_02004FEE
_0802A9A4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x3f
	bls _0802A992
	movs r0, #0
_0802A9B0:
	pop {r1}
	bx r1
	.syntax divided
