	.syntax unified
sub_0804E3AC:
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804E3BE
	bl sub_0804F7B0
	b _0804E3D6
_0804E3BE:
	ldr r0, _0804E3DC
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #4
	bl sub_080534C8
_0804E3D6:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_0804E3DC: .4byte gUnknown_0201A1F2
	.syntax divided
