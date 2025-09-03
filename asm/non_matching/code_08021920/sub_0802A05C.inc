	.syntax unified
sub_0802A05C:
	push {lr}
	ldr r2, _0802A070
	ldr r1, [r2, #0xc]
	adds r1, r1, r0
	ldr r0, _0802A074
	cmp r1, r0
	bls _0802A078
	str r0, [r2, #0xc]
	b _0802A07A
	.align 2, 0
_0802A070: .4byte gSave
_0802A074: .4byte 0x000F423F
_0802A078:
	str r1, [r2, #0xc]
_0802A07A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
