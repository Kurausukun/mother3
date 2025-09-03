	.syntax unified
sub_0803FA8C:
	push {r4, r5, lr}
	bl sub_0803FAC8
	bl sub_0803FB60
	ldr r4, _0803FAC0
	ldr r5, _0803FAC4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_0800160C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x1e
	movs r3, #0x20
	bl sub_0800160C
	movs r0, #0
	movs r1, #1
	bl sub_08056584
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FAC0: .4byte gUnknown_02016078
_0803FAC4: .4byte gMenuTextPalette
	.syntax divided
