	.syntax unified
sub_08068770:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_0805D2A4
	ldr r0, _080687A0
	str r0, [r4, #4]
	ldr r0, _080687A4
	movs r1, #1
	rsbs r1, r1, #0
	ldr r5, _080687A8
	str r5, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0805D2D4
	str r5, [sp, #8]
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687A0: .4byte vt_09F7EA80
_080687A4: .4byte gUnknown_09C90960
_080687A8: .4byte _vt.1D
	.syntax divided
