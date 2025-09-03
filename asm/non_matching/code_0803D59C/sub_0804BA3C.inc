	.syntax unified
	push {r4, lr}
	ldr r4, _0804BA5C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0x50
	bl sub_080511F8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA5C: .4byte gUnknown_0201A72C
	.syntax divided
