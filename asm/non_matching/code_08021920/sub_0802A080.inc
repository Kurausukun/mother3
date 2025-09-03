	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A0B2
	ldr r0, _0802A098
	ldr r3, [r0, #0xc]
	adds r4, r0, #0
	cmp r3, r2
	blo _0802A09C
	subs r0, r3, r2
	b _0802A09E
	.align 2, 0
_0802A098: .4byte gSave
_0802A09C:
	movs r0, #0
_0802A09E:
	str r0, [r4, #0xc]
	adds r1, r4, #0
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	ldr r1, _0802A0B8
	cmp r0, r1
	bls _0802A0B0
	adds r0, r1, #0
_0802A0B0:
	str r0, [r4, #8]
_0802A0B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0B8: .4byte 0x000F423F
	.syntax divided
