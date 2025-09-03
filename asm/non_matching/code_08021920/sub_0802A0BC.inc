	.syntax unified
sub_0802A0BC:
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A0EE
	ldr r0, _0802A0D4
	ldr r3, [r0, #8]
	adds r4, r0, #0
	cmp r3, r2
	blo _0802A0D8
	subs r0, r3, r2
	b _0802A0DA
	.align 2, 0
_0802A0D4: .4byte gSave
_0802A0D8:
	movs r0, #0
_0802A0DA:
	str r0, [r4, #8]
	adds r1, r4, #0
	ldr r0, [r1, #0xc]
	adds r0, r0, r2
	str r0, [r1, #0xc]
	ldr r1, _0802A0F4
	cmp r0, r1
	bls _0802A0EC
	adds r0, r1, #0
_0802A0EC:
	str r0, [r4, #0xc]
_0802A0EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0F4: .4byte 0x000F423F
	.syntax divided
