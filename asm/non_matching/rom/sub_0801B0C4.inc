	.syntax unified
sub_0801B0C4:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl sub_0801B4E4
	adds r1, r0, #0
	movs r2, #0
	ldr r3, _0801B0E0
_0801B0D6:
	ldrh r0, [r1, #4]
	cmp r0, r4
	bne _0801B0E4
	adds r0, r1, #0
	b _0801B0F2
	.align 2, 0
_0801B0E0: .4byte 0x000005DB
_0801B0E4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #8
	cmp r2, r3
	bls _0801B0D6
	movs r0, #0
_0801B0F2:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
