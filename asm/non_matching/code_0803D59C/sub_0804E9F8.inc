	.syntax unified
sub_0804E9F8:
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804EA0A
	bl sub_080503DC
	b _0804EA1E
_0804EA0A:
	ldr r0, _0804EA24
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #2
	movs r3, #1
	bl sub_08053804
_0804EA1E:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804EA24: .4byte gUnknown_0201A1F2
	.syntax divided
