	.syntax unified
sub_0804B744:
	push {r4, r5, lr}
	ldr r4, _0804B78C
	adds r5, r4, #0
	adds r5, #0x74
	movs r1, #0x14
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0x36
	bl sub_08051080
	movs r1, #0x24
	rsbs r1, r1, #0
	adds r0, r5, #0
	movs r2, #0x2e
	bl sub_08051080
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #6
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0x58
	bl sub_080511F8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B78C: .4byte gUnknown_0201A55C
	.syntax divided
