	.syntax unified
sub_0802706C:
	push {lr}
	lsls r0, r0, #0x10
	movs r2, #0
	ldr r3, _0802708C
	movs r1, #0xf0
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0x10
_0802707C:
	lsls r0, r2, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _08027090
	adds r0, r2, #0
	b _0802709C
	.align 2, 0
_0802708C: .4byte gDirectionTable
_08027090:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bls _0802707C
	movs r0, #0
_0802709C:
	pop {r1}
	bx r1
	.syntax divided
