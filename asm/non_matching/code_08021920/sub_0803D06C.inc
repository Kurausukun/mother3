	.syntax unified
sub_0803D06C:
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803D090
	ldr r1, _0803D08C
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r3, #0
	bl sub_08001B18
	b _0803D09C
	.align 2, 0
_0803D08C: .4byte gUnknown_0200F488
_0803D090:
	ldr r1, _0803D0A4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r3, #0
	bl sub_08001B18
_0803D09C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803D0A4: .4byte gUnknown_03005314
	.syntax divided
