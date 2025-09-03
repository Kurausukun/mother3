	.syntax unified
sub_08058E04:
	push {lr}
	movs r0, #0xa6
	bl sub_08036D60
	ldr r1, _08058E2C
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	movs r0, #0
	bl sub_08036DDC
	adds r1, r0, #0
	ldr r0, _08058E30
	movs r2, #0x10
	movs r3, #0xe0
	bl sub_0800160C
	pop {r0}
	bx r0
	.align 2, 0
_08058E2C: .4byte 0x06017800
_08058E30: .4byte gUnknown_02016078
	.syntax divided
