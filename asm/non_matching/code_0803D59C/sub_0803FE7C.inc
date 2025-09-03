	.syntax unified
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _0803FEA8
	movs r2, #0xec
	lsls r2, r2, #0xe
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FEAC
	movs r2, #2
	movs r3, #0x60
	bl sub_0800160C
	movs r0, #2
	movs r1, #3
	bl sub_08056584
	pop {r0}
	bx r0
	.align 2, 0
_0803FEA8: .4byte gMenuData
_0803FEAC: .4byte gUnknown_02016078
	.syntax divided
