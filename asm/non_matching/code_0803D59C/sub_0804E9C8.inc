	.syntax unified
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804E9DA
	bl sub_0805030C
	b _0804E9EE
_0804E9DA:
	ldr r0, _0804E9F4
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #2
	movs r3, #1
	bl sub_08053804
_0804E9EE:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804E9F4: .4byte gUnknown_0201A1F2
	.syntax divided
