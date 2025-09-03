	.syntax unified
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _0803FD40
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FD44
	movs r2, #2
	movs r3, #0x40
	bl sub_0800160C
	movs r0, #2
	movs r1, #2
	bl sub_08056584
	pop {r0}
	bx r0
	.align 2, 0
_0803FD40: .4byte gMenuData
_0803FD44: .4byte gUnknown_02016078
	.syntax divided
