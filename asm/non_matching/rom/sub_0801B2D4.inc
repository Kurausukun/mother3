	.syntax unified
sub_0801B2D4:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B3D8
	adds r2, r0, #0
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0801B2E6:
	lsls r0, r1, #1
	adds r0, r2, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r3
	beq _0801B30C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xb
	bls _0801B2E6
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801B30C
	movs r0, #1
	b _0801B30E
_0801B30C:
	movs r0, #0
_0801B30E:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
