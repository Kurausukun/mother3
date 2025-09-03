	.syntax unified
	push {lr}
	ldr r2, _0802A04C
	ldr r1, [r2, #8]
	adds r1, r1, r0
	ldr r0, _0802A050
	cmp r1, r0
	bls _0802A054
	str r0, [r2, #8]
	b _0802A056
	.align 2, 0
_0802A04C: .4byte gSave
_0802A050: .4byte 0x000F423F
_0802A054:
	str r1, [r2, #8]
_0802A056:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
