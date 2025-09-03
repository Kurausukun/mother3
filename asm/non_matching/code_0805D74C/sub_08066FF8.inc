	.syntax unified
sub_08066FF8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808789C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806700C
	movs r0, #0
	b _08067014
_0806700C:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08067014:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
